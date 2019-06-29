using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FinsScript : MonoBehaviour
{
    [SerializeField] GameObject left, right;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        left.transform.localPosition = OVRInput.GetLocalControllerPosition(OVRInput.Controller.LTouch);
        right.transform.localPosition = OVRInput.GetLocalControllerPosition(OVRInput.Controller.RTouch);
    }
}
