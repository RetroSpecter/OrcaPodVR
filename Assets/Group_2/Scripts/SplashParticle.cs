using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SplashParticle : MonoBehaviour
{
    public Transform waterSurface;
    private bool prev;
    public GameObject particles;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.y < waterSurface.position.y && !prev)
        {
            foreach (ParticleSystem p in particles.transform.GetComponentsInChildren<ParticleSystem>())
            {
                print("!");
                p.Play();
            }
            prev = true;
        }

        if (transform.position.y > waterSurface.position.y && prev)
        {
            foreach (ParticleSystem p in particles.transform.GetComponentsInChildren<ParticleSystem>())
            {
                print("!");
                p.Play();
            }
            prev = false;
        }

        if (transform.position.y > waterSurface.position.y)
        {
            prev = false;
        }


    }
}
