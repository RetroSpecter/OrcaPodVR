using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class startscreen : MonoBehaviour
{

    // Use this for initialization

    public Material mat;
    public GameObject granny, paticlesFXW, particle_white, particle_2, headInteaction, pod, grannyDouble, text,stfish;
    float disolve = -1f;
    bool open = false, close = false;
    void Start()
    {
        mat.SetFloat(Shader.PropertyToID("Vector1_2692E03E"), -1f);
        
        particle_2.SetActive(false);
        StartCoroutine("openscene");
    }

    IEnumerator openscene()
    {
        yield return new WaitForSeconds(1.5f);
        open = true;
    }

    // Update is called once per frame
    void Update()
    {
        if (open)
        {
            mat.SetFloat(Shader.PropertyToID("Vector1_2692E03E"), disolve);
            disolve += 0.01f;
            if(disolve>0 && disolve<2)
            {
                
                particle_2.SetActive(true);
            }
            if (disolve > 2)
            {
                open = false;
                gameObject.SetActive(false);
                granny.SetActive(true);
                paticlesFXW.SetActive(true);
                particle_white.SetActive(true);
                headInteaction.GetComponent<Player_GazeInteraction>().enabled = true;
                text.SetActive(true);
                stfish.SetActive(true);
            }
        }

        if (close)
        {
            mat.SetFloat(Shader.PropertyToID("Vector1_2692E03E"), disolve);
            disolve -= 0.01f;
            if (disolve <= 0.1 && disolve >= 0)
            {
                granny.SetActive(false);
                paticlesFXW.SetActive(false);
                particle_white.SetActive(false);
                headInteaction.GetComponent<Player_GazeInteraction>().enabled = false;
                pod.SetActive(false);
                grannyDouble.SetActive(false);
                
                particle_2.SetActive(false);
                gameObject.SetActive(true);
            }
            if (disolve <= -1)
            {
                close = false;
                SceneTransitions.instance.Transition();
            }
        }
    }

    public void closescreen()
    {
        gameObject.SetActive(true);
        mat.SetFloat(Shader.PropertyToID("Vector1_2692E03E"), 2f);
        close = true;
    }
}
