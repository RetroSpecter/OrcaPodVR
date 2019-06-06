using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour {

    public audioQueue[] audioQueues;
    private Dictionary<String, audioQueue> audioQueueDict;

    public float defaultVolume = 1;
    public static AudioManager instance;

    public void Awake()
    {
        instance = this;
        audioQueueDict = new Dictionary<string, audioQueue>();
        foreach (audioQueue aq in audioQueues) {
            if (audioQueueDict.ContainsKey(aq.name)) {
                Debug.LogError("Invalid Input: repeated name in audioQueues", this.gameObject);
                break;
            }

            audioQueueDict.Add(aq.name, aq);
        }
    }

    // PHIL TODO: fill out this function so that the AudioSource "source" will play 
    // the sound at the given volume and pitch (look at the code that I sent you last night as reference. The code you will need
    // to write will almost be the same)
    public void Play(AudioSource source, AudioClip sound, float volume = 1, float pitch = 1)
    {

        /* this is adjusting the volume and pitch values of the AudioSource to match the settings we passed in*/
        source.volume = volume;
        source.pitch = pitch;

        /* Audiosource has this value, clip, which is the sound that it is going to play. We set that to the sound we passed in earlier*/
        source.clip = sound;

        /* this is a function of AudioSource that tells it to play itself with whatever audiosettings we just gave it*/
        source.Play();





    }

    public void Play(AudioSource source, AudioClip sound, float volume = 1, float minPitch= 1, float maxPitch = 1)
    {
        Play(source, sound, volume, UnityEngine.Random.Range(minPitch, maxPitch));
    }

    public void Play(String audioQueueName) {
        audioQueue aq = audioQueueDict[audioQueueName];
        if (aq == null) {
            Debug.LogError("Invalid Input: name not in list", this.gameObject);
            return;
        }

        Play(aq.audioSource, aq.audio, aq.volume, aq.pitchRange.x, aq.pitchRange.y);
    }
}

[System.Serializable]
public class audioQueue
{
    public string name;
    public AudioSource audioSource;
    public AudioClip audio;
    public float volume = 1;
    public Vector2 pitchRange = Vector2.one;
}