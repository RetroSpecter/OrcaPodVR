using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KelpOffsetController : MonoBehaviour {
    public Material mat;
    public Transform player;
    public Shader shader;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        print(Shader.PropertyToID("Vector3_18F1ACA2"));
        mat.SetVector(Shader.PropertyToID("Vector3_6CA1A80"), player.position);
	}
}
