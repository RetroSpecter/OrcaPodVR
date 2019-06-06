using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DCBlend : MonoBehaviour
{
    [SerializeField] GameObject leftChain, rightChain, leftDamp, rightDamp;
    //[SerializeField] GameObject lefthand, righthand;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.S))
        {
            leftDamp.SetActive(false);
            rightDamp.SetActive(false);
            leftChain.SetActive(true);
            rightChain.SetActive(true);
        }
        if (Input.GetKeyUp(KeyCode.S))
        {
            leftDamp.SetActive(true);
            rightDamp.SetActive(true);
            leftChain.SetActive(false);
            rightChain.SetActive(false);
        }
    }
}
