using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SineMovement : MonoBehaviour
{

    // Update is called once per frame
    void Update()
    {
        print(Mathf.Sin(Time.time));
        transform.position = new Vector3(0,1,0) * Mathf.Sin(Time.time);
    }
}
