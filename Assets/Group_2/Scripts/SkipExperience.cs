using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

public class SkipExperience : MonoBehaviour
{
    public PostProcessVolume post;
    private float time;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (OVRInput.Get(OVRInput.Button.Two) || Input.GetKey(KeyCode.S))
        {
            time += Time.deltaTime;
            print("xxx");
        } else
        {
            time = 0;
        }

        if (time > 0.8f)
        {
            time = -99;
            StartCoroutine(endGame(0.2f));    
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
}
