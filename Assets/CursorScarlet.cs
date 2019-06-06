using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CursorScarlet : MonoBehaviour
{

    public GameObject camera;
    public float speed = 4;
    public float distance = 2;


    // Update is called once per frame
    void Update()
    {
        transform.position = Vector3.Lerp(transform.position, camera.transform.position + camera.transform.forward * distance, Time.deltaTime * speed);
    }
}
