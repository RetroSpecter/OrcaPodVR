using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CatchFish : MonoBehaviour
{
    [SerializeField] float haptic_frequency = 0.1f, haptic_amplitutde=0.1f;
    [SerializeField] Transform fish;
    [SerializeField] GameObject fishbones;
    [SerializeField] AudioSource burp;
    bool readytoeat = false;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {

        if (other.CompareTag("fishschool"))
        {
            fish.gameObject.SetActive(true);
            if (gameObject.tag == "right")
            {
                fish.SetParent(transform);
                fish.transform.localPosition = Vector3.zero;
                OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.RTouch);
                readytoeat = true;
            }
            else if (other.gameObject.CompareTag("left"))
            {
                fish.SetParent(transform);
                fish.transform.localPosition = Vector3.zero;
                OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.LTouch);
                readytoeat = true;
            }
        }
        if (other.CompareTag("head") && readytoeat)
        {
            fish.gameObject.SetActive(false);
            burp.Play();
            fishbones.GetComponent<Fishbones_behaviour>().Slideout();
            readytoeat = false;
        }
    }
}
