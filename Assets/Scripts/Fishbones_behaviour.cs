using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations;

public class Fishbones_behaviour : MonoBehaviour
{

    // Use this for initialization
    public Transform pos;
    bool movedown = false;
    float dissolve_value;
    public Material myrend;
    void Start()
    {
        dissolve_value = 2;
        myrend.SetFloat(Shader.PropertyToID("Vector1_B7A3C04D"), dissolve_value);
    }

    // Update is called once per frame
    void Update()
    {
        if (movedown)
        {
            transform.position = Vector3.Lerp(transform.position, pos.position, Time.deltaTime * .8f);
            transform.localScale = transform.localScale + new Vector3(0.1f, 0.1f, 0.1f);
            myrend.SetFloat(Shader.PropertyToID("Vector1_B7A3C04D"), dissolve_value);
            dissolve_value += 0.1f;
        }
        if (dissolve_value > 2f)
        {
            movedown = false;
            dissolve_value = -1;
           // myrend.material.SetFloat(Shader.PropertyToID("Vector1_329841D5"), -0.2f);
            transform.localScale = Vector3.zero;
            GetComponent<ParentConstraint>().constraintActive = true;
        }
    }
    //keepfishbones visible
    public void Slideout()
    {
        dissolve_value = -1;
        GetComponent<ParentConstraint>().constraintActive = false;
        movedown = true;
    }
}
