using Lasp;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[AddComponentMenu("LASP/Audio Level Tracker")]
public class MicrophoneManager : MonoBehaviour
{
    private Animator anim;
    public float curVolume;
    public float volumeDampen;
    private AudioSource source;

    private void Start()
    {

        source = GetComponent<AudioSource>();
        source.loop = true;
        /*
        foreach (var device in Microphone.devices)
            source.clip = Microphone.Start(device, true, 10, 44100);

        //source.clip = Microphone.Start("Microphone", true, 10, 44100);
        while (!(Microphone.GetPosition(null) > 0))
            source.Play();
            */

    }

    private void Update()
    {
        if (curVolume > 0.1f)
        {
            if(!source.isPlaying)
                source.Play();
            source.volume = Mathf.Lerp(source.volume, 1, Time.deltaTime * 30);
        } else {
            source.volume = Mathf.Lerp(source.volume, 0, Time.deltaTime * 10);
            if (source.volume < 0.01f) {
                source.Stop();
            }
        }
    }

    public void updateClip(AudioClip ac)
    {
        source.clip = ac;
    }

    // Update is called once per frame
    public void updateSound(float volume)
    {
        curVolume = volume;
    }
}

