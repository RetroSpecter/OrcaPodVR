using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations.Rigging;
using UnityEngine.Animations;


public class DampToChain : MonoBehaviour
{
    [SerializeField] Rig leftchain, rightchain, leftDamp, rightDamp;
    [SerializeField] ParentConstraint leftParent, rightParent;
    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.S))
        {
            leftchain.weight = 1;
            leftDamp.weight = 0;
            rightchain.weight = 1;
            rightDamp.weight = 0;
            leftParent.weight = 0;
            rightParent.weight = 0;
            Debug.Log(leftchain.weight);
        }
        if (Input.GetKeyDown(KeyCode.K))
        {
            leftchain.weight = 0;
            leftDamp.weight = 1;
            rightchain.weight = 0;
            rightDamp.weight = 1;
            leftParent.weight = 1;
            rightParent.weight = 1;
        }
    }
}
