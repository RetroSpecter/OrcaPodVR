using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LipFlap : MonoBehaviour {


    public Animator anim;
    private AudioSource source;
    public float offset = 0;

    float targetVelocity;
    float curVelocity;
    float[] clipSampleData;

	// Use this for initialization
	void Start () {
        source = GetComponent<AudioSource>();
        clipSampleData = new float[1024];
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        float volume = 0;

        if (source.isPlaying)
        {
            source.clip.GetData(clipSampleData, source.timeSamples);
            foreach (var sample in clipSampleData)
            {
                volume += Mathf.Abs(sample);
            }
        }

        targetVelocity = Mathf.SmoothDamp(targetVelocity, volume / 1024 * offset, ref curVelocity, Time.deltaTime * 7);
        anim.SetFloat("mouth", targetVelocity);
	}
}
