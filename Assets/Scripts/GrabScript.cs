using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabScript : MonoBehaviour
{

    //private bool rightHandtouched = false;
    //private bool leftHandtouched = false;
    public GameObject righthand,lefthand, granny;
    [SerializeField] float haptic_frequency=0.25f, haptic_amplitutde=0.25f;
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
        granny.GetComponent<Granny_Behavior>().EatenAndCelebration();
        if (gameObject.CompareTag("Fish"))
        {
            granny.GetComponent<Granny_Behavior>().Clap3(1);
        }
        else if (gameObject.CompareTag("salmon2"))
        {
            granny.GetComponent<Granny_Behavior>().Clap2();
        }
        else if (gameObject.CompareTag("Fish1"))
        {
            granny.GetComponent<Granny_Behavior>().Clap3(2);
        }
        if (gameObject.CompareTag("Fish2"))
        {
            granny.GetComponent<Granny_Behavior>().Clap3(3);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("right"))
        {
           transform.SetParent(righthand.transform);
           OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.RTouch);
        }
        else if(other.gameObject.CompareTag("left"))
        {
            transform.SetParent(lefthand.transform);
            OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.LTouch);
        }
        else if (other.gameObject.CompareTag("head"))
        {
            celebrate();
        }
    }
      
}
