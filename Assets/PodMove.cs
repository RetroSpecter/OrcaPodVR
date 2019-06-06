using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PodMove : MonoBehaviour {

    public float speed = 3.0f;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        transform.position += transform.forward * speed * Time.deltaTime;
	}
}
