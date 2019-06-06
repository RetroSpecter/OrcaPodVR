using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_Interaction_KeyBoard : MonoBehaviour
{

    public GameObject XRRig;
    public GameObject granny;
    public bool keyboardIntercation;
    bool isrotate = false;
    float counterTime;
    // Use this for initialization
    void Start()
    {
        counterTime = 0.0f;
    }

    // Update is called once per frame
    void Update()
    {
        if (keyboardIntercation)
            KeyboardSetup();
    }

    void KeyboardSetup()
    {
        //counterTime += Time.deltaTime;
        //Debug.Log(counterTime);
        //if (counterTime >= 5f)
        //{
        //    XRRig.transform.LookAt(new Vector3(granny.transform.position.x, XRRig.transform.position.y,
        //  granny.transform.position.z));
        //    counterTime = 0f;
        //}

        //for testing without oclus

        if (Input.GetKeyDown(KeyCode.R))
        {
            isrotate = true;
        }

        if (isrotate)
        {
            Vector3 relpos = XRRig.transform.position - granny.transform.position;
            Quaternion rot = Quaternion.LookRotation(relpos);
            Quaternion cur = granny.transform.localRotation;
            granny.transform.rotation = Quaternion.Lerp(cur, rot, Time.deltaTime);
        }

        if (Input.GetKeyDown(KeyCode.C))
        {
            int correct_fish = Animator.StringToHash("correct");
            granny.GetComponent<Animator>().SetTrigger(correct_fish);
        }

    }
}