using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class granny_doublebehaviour : MonoBehaviour {

    // Use this for initialization

    public Transform pos, closecove;
	void Start () {
        StartCoroutine("CloseScreen");
    }
	
	// Update is called once per frame
	void Update () {

        transform.position = Vector3.Lerp(transform.position, pos.position, Time.deltaTime*0.75f);
        transform.rotation = Quaternion.Lerp(transform.rotation, pos.rotation, 0.3f * Time.deltaTime);
		
	}

    IEnumerator CloseScreen()
    {
        yield return new WaitForSeconds(30f);
        closecove.GetComponent<startscreen>().closescreen();
    }
}
