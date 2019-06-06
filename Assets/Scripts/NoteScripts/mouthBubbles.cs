using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class mouthBubbles : MonoBehaviour
{
    public ParticleSystem[] particles;
    public float volumeThreshold = 0.5f;
    bool alreadyBubbled = false;


    public void bubbleUp(float volume) {

        if (volume > volumeThreshold && !alreadyBubbled)
        {
            alreadyBubbled = true;
            foreach (ParticleSystem p in particles)
            {
                p.Emit(Random.Range(10, 30));
            }
        }
        else if(volume < volumeThreshold)
        {
            alreadyBubbled = false;
        }
    }
}
