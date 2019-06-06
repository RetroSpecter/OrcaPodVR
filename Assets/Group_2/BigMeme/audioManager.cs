using UnityEngine;
using System.Collections;

public class audioManager : MonoBehaviour {

    private AudioSource[] source;
    public AudioClip soundFX;
    public static audioManager instance;

    int index = 0;
    void Start() {
        instance = this;
        source = GetComponents<AudioSource>();
    }

    public void Play(AudioClip sound) {
        Play(sound, 0.5f, 1);
    }

    public void Play(AudioClip sound, float volume) {
        Play(sound, volume, 1);
    }

    public void Play(AudioClip sound, float volume, float minPitch, float maxPitch) {
        Play(sound,volume, Random.Range(minPitch, maxPitch));
    }

    public void Play(AudioClip sound, float volume, float pitch) {
        source[index].clip = sound;
        source[index].volume = volume;
        source[index].pitch = pitch;
        source[index].PlayOneShot(sound);

        index++;
        if (index >= source.Length) {
            index = 0;
        }
    }
}
