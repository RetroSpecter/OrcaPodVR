using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VolumeRock : MonoBehaviour
{

    public bool active = true;
    private float volume;
    private bool lookedAt = false;
    public float curVolume = 0;
    public float dampenVolume = 7;
    public float volumeThreshold = 1;
    public GameObject imagePlane;
    private Material mat;

    [Header("Activation Angle Settings")]
    private Camera cam;
    public float visionRadius = 45;
    float angleRadius;

    [Header("Sequence Recognition Stuff")]
    public float lengthError = 0.2f;
    public float sequenceRecognitionWaitTime = 0.5f;
    public string[] sequenceTimes;

    private IEnumerator CurMonitorVolume;
    private voiceNode voiceSequences;

    [Header("PlaySettings")]
    public string changeSound;
    public string changeSoundBack;

    private void Start()
    {
        cam = Camera.main;
        mat = imagePlane.GetComponent<Renderer>().material;
        voiceSequences = new voiceNode();
        foreach (string s in sequenceTimes) {
            string[] stringSequence = s.Split(',');
            Queue<float> numSequence = new Queue<float>();
            for (int i = 0; i < stringSequence.Length; i++) {
                numSequence.Enqueue(float.Parse(stringSequence[i]));
            }
            voiceSequences.addNode(numSequence);
        }
    }

    private void Update()
    {
        Vector3 angleToCam = transform.position - cam.transform.position;
        active = GetComponent<MusicRock>().isActive; // TODO: this is pretty lazy. would want to replace music rock with this in general
        if (Vector3.Angle(cam.transform.forward, angleToCam) < visionRadius && active) {
            if (CurMonitorVolume == null) {
                CurMonitorVolume = MonitorVolume();
                StartCoroutine(CurMonitorVolume);
            }
        } else {
            if (CurMonitorVolume != null) {
                if (!changeSoundBack.Equals("")) {
                    EventManager.instance.CallEvent(changeSoundBack);
                }
                StopCoroutine(CurMonitorVolume);
                CurMonitorVolume = null;
            }
        }
    }

    public void PlayRock()
    {
        GetComponent<MusicRock>().PlayRock(); // TODO: this is pretty lazy. would want to replace music rock with this in general
    }

    IEnumerator MonitorVolume() {
        if (!changeSound.Equals("")) {
            EventManager.instance.CallEvent(changeSound);
        }
        while (true) {
            if (curVolume > volumeThreshold) {
                yield return StartCoroutine(VoiceSequenceRecognition(sequenceRecognitionWaitTime));
            } 

            yield return null;
        }
    }

    IEnumerator VoiceSequenceRecognition(float waitTime) {
        float timeLeft = 0;
        voiceNode curDict = voiceSequences;
        while (timeLeft < waitTime) {
            if (curVolume > volumeThreshold) {
                float t = 0;
                yield return StartCoroutine(GetSoundLength(volumeThreshold, value => t = value));
                curDict = curDict.getNextNode(t, lengthError);
                print(t);
                if (curDict == null) {
                    break;
                }
                timeLeft = 0;
            }
            timeLeft += Time.deltaTime;
            yield return null;
        }
        print(curDict != null && curDict.isLeaf());
        if (curDict != null && curDict.isLeaf())
        {
            PlayRock();
        }
        else {
            AnimatorHandler.instance.ActivateTriggers("try again");
        }
    }

    IEnumerator GetSoundLength(float volThresh, System.Action<float> time) {
        float t = 0;
        while (curVolume > volThresh) {
            t += Time.deltaTime;
            yield return null;
        }

        time(t);
    }

    public void updateSound(float volume) {
        curVolume = Mathf.Lerp(curVolume, volume, Time.deltaTime * dampenVolume);
        if(mat != null)
            mat.SetFloat("_volume_slider", curVolume/0.75f);
    }
}

class voiceNode {
    public Dictionary<float, voiceNode> nodes;
    private bool endOfSequence;

    public voiceNode() {     
        nodes = new Dictionary<float, voiceNode>();
    }

    public bool isLeaf() {
        return endOfSequence;
    }

    public void addNode(Queue<float> q) {
        if (q.Count == 0) {
            endOfSequence = true;
            return;
        }
        float curTime = q.Dequeue();
        if (nodes.ContainsKey(curTime)) {
            nodes[curTime].addNode(q);
        } else {
            voiceNode newNode = new voiceNode();
            newNode.addNode(q);
            nodes.Add(curTime, newNode);
        }
    }

    public voiceNode getNextNode(float t, float lengthError) {
        foreach(float key in nodes.Keys) {
            if (t + lengthError > key) {
                return nodes[key];
            }
        }
        return null;
    }
}