using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CatchFish : MonoBehaviour
{
    [SerializeField] float haptic_frequency = 0.1f, haptic_amplitutde=0.1f;
    [SerializeField] Transform fishL,fishR;
    [SerializeField] GameObject fishbones;
    [SerializeField] Collider left, right;
    [SerializeField] AudioSource burp;
    bool readytoeat = false;
    // Start is called before the first frame update
    void Start()
    {
        fishR.gameObject.SetActive(false);
        fishL.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("fishschool"))
        {
            if (gameObject.tag == "right")
            {
                fishR.gameObject.SetActive(true);
                OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.RTouch);
                readytoeat = true;
                left.enabled = false;
            }
            if (gameObject.tag == "left")
            {
                fishL.gameObject.SetActive(true);
                OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.LTouch);
                readytoeat = true;
                right.enabled = false;
            }
        }
        if (other.CompareTag("MainCamera") && readytoeat)
        {
            fishR.gameObject.SetActive(false);
            fishL.gameObject.SetActive(false);
            burp.Play();
            fishbones.GetComponent<Fishbones_behaviour>().Slideout();
            readytoeat = false;
            left.enabled = true;
            right.enabled = true;
        }
    }
}
