using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EatDetect : MonoBehaviour {

    public GameObject granny_swim;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Fish"))
        {
            Debug.Log("Eaten");
            granny_swim.GetComponent<Granny_Behavior>().chewing.Play();
            granny_swim.GetComponent<Granny_Behavior>().EatenAndCelebration();
            granny_swim.GetComponent<Granny_Behavior>().Clap2();
        }
        if (other.gameObject.CompareTag("Salmon3"))
        {
            Debug.Log("Eaten");
            granny_swim.GetComponent<Granny_Behavior>().chewing.Play();
            granny_swim.GetComponent<Granny_Behavior>().EatenAndCelebration();
            granny_swim.GetComponent<Granny_Behavior>().Clap3();
        }
    }

    private void OnTriggerExit(Collider other)
    {

    }
}
