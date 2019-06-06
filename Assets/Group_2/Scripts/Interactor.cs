using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactor : MonoBehaviour {

    public LayerMask layermask;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        RaycastHit hit;
        Debug.DrawRay(transform.position, this.transform.forward * 100, Color.green );
        if (Physics.Raycast(transform.position, this.transform.forward, out hit, layermask)) {
            if (hit.transform.GetComponent<Interactable>())
                hit.transform.GetComponent<Interactable>().OnSelect();
        }
	}
}
