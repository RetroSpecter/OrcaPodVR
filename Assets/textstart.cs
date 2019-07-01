using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class textstart : MonoBehaviour
{
    [SerializeField] GameObject text, head;
    public GameObject granny;
    bool ismoveforward;
    [SerializeField] float haptic_frequency = 0.25f, haptic_amplitutde = 0.25f, time;
    // Start is called before the first frame update
    void Start()
    {
        time = Time.deltaTime;
    }

    // Update is called once per frame
    void Update()
    {
        //if(Time.deltaTime-time > 6f)
        //{
        //    ismoveforward = true;
        //}
        //if(ismoveforward)
        //{
        //    transform.position = Vector3.MoveTowards(transform.position, head.transform.position, Time.deltaTime * 0.85f);
        //    if (Vector3.Distance(transform.position, head.transform.position) < .4f)
        //        ismoveforward = false;
        //}
    }

    private void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "right")
        {
            if(checkfish())
            OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.RTouch);
        }
        else if (other.gameObject.CompareTag("left"))
        {
            if(checkfish())
            OVRInput.SetControllerVibration(haptic_frequency, haptic_amplitutde, OVRInput.Controller.LTouch);
        }
        if (other.gameObject.CompareTag("stoparea"))
        {
            ismoveforward = false;
        }
    }

    bool checkfish()
    {
        if (gameObject.CompareTag("startFish"))
        {
            head.GetComponent<Player_GazeInteraction>().setNoFish();
            gameObject.SetActive(false);
            granny.GetComponent<Granny_Behavior>().EatenAndCelebration();
            text.SetActive(false);
            return true;
        }
        return false;
    }
}
