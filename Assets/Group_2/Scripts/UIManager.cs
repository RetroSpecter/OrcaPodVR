using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIManager : MonoBehaviour {
    public Transform orca;
    public Material orcaIndicator;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        orcaIndicator.SetVector("target", orca.position);
	}
}
