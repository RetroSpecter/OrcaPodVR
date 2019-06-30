using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class textstart : MonoBehaviour
{
    [SerializeField] GameObject text, head;
    public GameObject granny;
    [SerializeField] float haptic_frequency = 0.25f, haptic_amplitutde = 0.25f;
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
        if (gameObject.CompareTag("startFish"))
        {
            head.GetComponent<Player_GazeInteraction>().setNoFish();
            gameObject.SetActive(false);
            granny.GetComponent<Granny_Behavior>().EatenAndCelebration();
            text.SetActive(false);
        }
        if (other.gameObject.tag == "right")
        {
            OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.RTouch);
        }
        else if (other.gameObject.CompareTag("left"))
        {
            OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.LTouch);
        }
    }
}
