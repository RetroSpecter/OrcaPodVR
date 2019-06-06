using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.PostProcessing;

public class PostProcessingManager : MonoBehaviour {

    public PostProcessingProfile abovewater, underwater;
    private PostProcessingBehaviour cameraPostProcessing;

	// Use this for initialization
	void Start () {
        cameraPostProcessing = FindObjectOfType<PostProcessingBehaviour>();
	}

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("On enter");
        if (other.CompareTag("Player"))
        {
            cameraPostProcessing.profile = underwater;
        }
        
    }

    private void OnTriggerExit(Collider other)
    {
        Debug.Log("On exit");
        if(other.CompareTag("Player"))
        {
            cameraPostProcessing.profile = abovewater;
        }
    }
}
