using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabScript : MonoBehaviour
{

    //private bool rightHandtouched = false;
    //private bool leftHandtouched = false;
    public GameObject righthand,lefthand, granny;
    GameObject fish;
    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void celebrate()
    {
        if (gameObject.CompareTag("Salmon3"))
        {
            granny.GetComponent<Granny_Behavior>().Clap3();
            granny.GetComponent<Granny_Behavior>().chewing.Play();
            granny.GetComponent<Granny_Behavior>().EatenAndCelebration();
        }
        else if (gameObject.CompareTag("Fish"))
        {
            granny.GetComponent<Granny_Behavior>().Clap2();
            granny.GetComponent<Granny_Behavior>().chewing.Play();
            granny.GetComponent<Granny_Behavior>().EatenAndCelebration();
        }
    }

    private void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "right")
        {
           transform.SetParent(other.transform);
        }
        else if(other.gameObject.CompareTag("left"))
        {
            transform.SetParent(lefthand.transform);
        }
        else if (other.gameObject.CompareTag("head"))
        {
            celebrate();
        }
    }
      
}
