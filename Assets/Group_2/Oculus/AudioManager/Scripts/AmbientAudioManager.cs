using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

public class AmbientAudioManager : MonoBehaviour {

    public AudioSource aboveSrc;
    public AudioSource belowSrc;

    
    public Transform player;
    public Transform OceanPlane;
    public AudioClip[] clips;
    public Animator anim;
    public GameObject pod;
    public FadeControlTalequah fade;
    public float playDuration;
    public GameObject masterUI;
    public PostProcessVolume post;
    // Transition from one scene to another.
    public SceneTransitions transitionHandler;

    private int nextClip;
    private bool prevState;
    private float oceanHeight, podStart;
    private bool goneAbove, fadeStarted;

    // Use this for initialization
    void Awake() {
        nextClip = 1;
        prevState = IsAboveWater();
        aboveSrc.Pause();
        aboveSrc.clip = clips[0];
        oceanHeight = OceanPlane.position.y;
        goneAbove = false;
        fadeStarted = false;
    }
	
	// Update is called once per frame
	void Update () {
        bool state = IsAboveWater();

        if (IsAboveWater())
        {
            if(!pod.active)
            {
                pod.SetActive(true);
                podStart = Time.time;
                StartCoroutine(endGame(20));
                masterUI.SetActive(false);
            }
                      
        }

        if (pod.active) {
            if (Time.time - podStart > playDuration && !fadeStarted) {
                //fade.fadeOut();
                fadeStarted = true;
            }
        }

        if (state)
        {
            
            if(state != prevState) {
                belowSrc.Stop();
                aboveSrc.Play();
                prevState = state;
                anim.SetBool("User_breaching", true);
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
                anim.SetBool("User_breaching", false);
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

    IEnumerator endGame(float delay)
    {
        post.isGlobal = true;
        yield return new WaitForSeconds(delay);
        ColorGrading colorGradingLayer = null;
        post.profile.TryGetSettings(out colorGradingLayer);
        
        while (colorGradingLayer.postExposure < 20)
        {
            colorGradingLayer.postExposure.Override(colorGradingLayer.postExposure.value + Time.deltaTime * 2);
            yield return new WaitForEndOfFrame();
        }
        SceneTransitions.instance.Transition();
    }
}
