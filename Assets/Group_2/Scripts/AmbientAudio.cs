using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

public class AmbientAudio : MonoBehaviour
{

    public AudioSource aboveSrc;
    public AudioSource belowSrc;


    public Transform player;
    public Transform OceanPlane;
    public AudioClip[] clips;
    
    
    //public FadeControlTalequah fade;
    //public float playDuration;
    //public GameObject masterUI;
    //public PostProcessVolume post;
    // Transition from one scene to another.
    //public SceneTransitions transitionHandler;

    private int nextClip;
    private bool prevState;
    private float oceanHeight, podStart;
    

    // Use this for initialization
    void Awake()
    {
        nextClip = 1;
        prevState = IsAboveWater();
        aboveSrc.Pause();
        aboveSrc.clip = clips[0];
        oceanHeight = OceanPlane.position.y;
    }

    // Update is called once per frame
    void Update()
    {
        bool state = IsAboveWater();

        if (IsAboveWater())
        {
            

        }

        if (state)
        {

            if (state != prevState)
            {
                belowSrc.Stop();
                aboveSrc.Play();
                prevState = state;
            }
            if (aboveSrc.isPlaying)
            {
                return;
            }
            aboveSrc.clip = clips[nextClip];
            aboveSrc.Play();

            // Cycle the queue
            nextClip++;
            if (nextClip >= clips.Length)
                nextClip = 0;
        }
        else
        {
            if (state != prevState)
            {
                ResetAbove();
                belowSrc.Play();
                prevState = state;
            }
        }
    }



    void ResetAbove()
    {
        aboveSrc.Stop();
        aboveSrc.clip = clips[0];
        nextClip = 1;
    }

    bool IsAboveWater()
    {
        return player.position.y > oceanHeight;
    }

    
}
