using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraTextTimer : MonoBehaviour
{
    [SerializeField] float disappearTime;
    [SerializeField] GameObject text;
    float starttime;
    // Start is called before the first frame update
    void Start()
    {
        starttime = Time.deltaTime;
        text.SetActive(true);
    }

    // Update is called once per frame
    void Update()
    {
        disappearTime -= Time.deltaTime;
        if(disappearTime<0)
            text.SetActive(false);

    }
}