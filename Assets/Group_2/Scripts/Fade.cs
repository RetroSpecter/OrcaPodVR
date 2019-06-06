using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Fade : MonoBehaviour {

    public FadeControlTalequah fade;

    void Awake()
    {
        fade.fadeIn();
    }
	
	// Update is called once per frame
	void Update () {
        
    }

    
}
