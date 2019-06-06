using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(AudioSource))]
public class SoundRotation : MonoBehaviour
{

    public AudioClip[] clips;

    private int nextClip;
    private AudioSource player;

    public void Awake()
    {
        nextClip = Random.Range(0, clips.Length);
        player = GetComponent<AudioSource>();
    }

    public void Update()
    {
        // Wait until the current sound is done
        if (player.isPlaying)
            return;

        // Play the next in queue
        player.clip = clips[nextClip];
        player.Play();

        // Cycle the queue
        nextClip++;
        if (nextClip >= clips.Length)
            nextClip = 0;


    }

}
