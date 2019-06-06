using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class above_water_script : MonoBehaviour {

    private AudioSource aboveSrc;
    public float oceanHeight = 7.0f;
    public Transform player;
    public AudioClip[] clips;
    public bool belowWater = true;
    private int nextClip = 0;

	// Use this for initialization
	void Awake () {
    
        aboveSrc = this.GetComponent<AudioSource>();
        //aboveSrc.clip = clips[0];
        nextClip = 0;
        aboveSrc.Play();
        
    }
	
	// Update is called once per frame
	void Update () {
        /* if (IsAboveWater())
         {
             if (belowWater)
             {
                 belowWater = false;
                 aboveSrc.Play();
             }
             RotateAudioClip();
         }
         else
         {
             belowWater = true;
         }*/
        RotateAudioClip();
        Debug.Log("Playing: " + aboveSrc.isPlaying);
        Debug.Log("Clip: " + aboveSrc.clip.name);
        

    }

    bool IsAboveWater()
    {
        return player.position.y > oceanHeight;
    }

    void RotateAudioClip()
    {
        if (aboveSrc.isPlaying)
            return;

        aboveSrc.clip = clips[nextClip];
        aboveSrc.Play();

        nextClip++;
        if (nextClip >= clips.Length)
            nextClip = 0;
    }

    
}
