using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// VolumeRock manages the volume behavior of the rock. Keeps track of if the player is singing, for how long.
// If the player successfully sings long enough, then it activates the PlayRock condition.
public class VolumeRock : MonoBehaviour
{

    public bool active = true;
    //private float volume;

        
    [HideInInspector] public float curVolume = 0;

    [Tooltip("this is how fast volume slider lerps to the calculated volume")]
    public float dampenVolume = 7; // dictates how smooth the volume transitions vs being right on the actual value
    [Tooltip("the minimum volume level to be registered by the rock")]
    public float volumeThreshold = 1;

    [Space(), Tooltip("the symbol in front of the rock")]
    public GameObject imagePlane;
    private Material mat;

    [Header("Activation Settings")]
    protected Camera cam;

    [Tooltip("The minimum angle the camera has to be facing towards the rock in order to register if its singing")]
    // this is essentially to prevent the player from registering the rock when they are facing away
    public float visionRadius = 45;
    private float angleRadius;

    [Header("Sequence Recognition Stuff")]
    public float lengthError = 0.2f;
    protected IEnumerator CurMonitorVolume;
    public float voiceLength = 1;

    [Header("PlaySettings")]

    public AudioSource cameraSource;
    [Tooltip("If the rock has a unique sound attatched to it. Calls an event in the event manager that changes it")]
    public AudioClip changeSound;
    public AudioClip changeSoundBack;

    protected virtual void Start()
    {
        cam = Camera.main;
        mat = imagePlane.GetComponent<Renderer>().material;
    }

    protected virtual void Update()
    {
        // TODO: this is pretty lazy. would want to replace music rock with this in general
        if (GetComponent<MusicRock>() != null)
            active = GetComponent<MusicRock>().isActive;

        if (canRegisterSinging() && active) {
            if (CurMonitorVolume == null) {
                CurMonitorVolume = MonitorVolume();
                StartCoroutine(CurMonitorVolume);
            }
        } else {
            if (CurMonitorVolume != null) {
                if (changeSoundBack != null) {
                    cameraSource.clip = changeSoundBack;
                }
                StopCoroutine(CurMonitorVolume);
                CurMonitorVolume = null;
            }
        }
    }

    // makes sure the player is facing towards the rock a certain angle and is close enough to the rock
    // to actually register singing
    public virtual bool canRegisterSinging() {
        Vector3 angleToCam = transform.position - cam.transform.position;
        return Vector3.Angle(cam.transform.forward, angleToCam) < visionRadius;
    }

    // activates the success action (fish swimming, scarlet doing animations, etc)
    public virtual void PlayRock()
    {
        // TODO: this is pretty lazy. would want to replace music rock with this in general
        GetComponent<MusicRock>().PlayRock();
    }

    // Moniters the current volume stats of the player

    // Code Tip: Corutines (dictated by the IEnumerator allow us to run certain methods independently of the update method as well as
    // allow us to pause our code until certain condition are met
    protected IEnumerator MonitorVolume() {

        // if the rock requires a sound change, canges the sound
        if (changeSound != null) {
            cameraSource.clip = changeSound;
        }

        while (true)
        {
            if (curVolume > volumeThreshold)
            {
                // Code Tip: in corutines, we use "yield return" to dictate the code to wait for something to happen
                // in this case we are waiting for this new corutine to finish before continuing our code
                yield return StartCoroutine(VoiceSequenceRecognition());
            }
            yield return null;
        }
    }

    // registers how long the player has made noise/sung
    // if it is long enough, we do the success action
    // if not, we activate a failure state
    IEnumerator VoiceSequenceRecognition() {
        float t = 0;
        yield return StartCoroutine(GetSoundLength(volumeThreshold, value => t = value));

        if (t + lengthError > voiceLength) {
            PlayRock();
        } else if ((t / voiceLength) > 0.2f && AnimatorHandler.instance != null) {
            AnimatorHandler.instance.ActivateTriggers("try again");
        }
    }

    // registers how long the player has sung
    IEnumerator GetSoundLength(float volThresh, System.Action<float> time) {
        float t = 0;
        while (curVolume > volThresh) {
            t += Time.deltaTime;


            if (mat != null)
                mat.SetFloat("_volume_slider", t/voiceLength);

            yield return null;
        }

        if (mat != null)
            mat.SetFloat("_volume_slider", 0);
        time(t);
    }


    // this is the funciton that listens to the microphone manager, and updates currentVolume of the player
    private float curLength = 0;
    public void updateSound(float volume) {
        curVolume = Mathf.Lerp(curVolume, volume, Time.deltaTime * dampenVolume);
    }
}


//Depricated
/*
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
*/