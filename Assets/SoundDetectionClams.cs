using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundDetectionClams : MonoBehaviour
{
    public MicrophoneManager microphone;
    private float currentVolume;
    public Animator anim;

    // Start is called before the first frame update
    void Start()
    {
        currentVolume = microphone.getCurVolume();
        anim.SetFloat("Blend", currentVolume);
    }

    // Update is called once per frame
    void Update()
    {
        currentVolume = microphone.getCurVolume();
        anim.SetFloat("Blend", currentVolume);
    }
}
