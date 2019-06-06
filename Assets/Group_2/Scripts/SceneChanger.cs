using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChanger : MonoBehaviour {

    private float timer;

	// Use this for initialization
	void Start () {
        timer = 0f;
	}
	
	// Update is called once per frame
	void Update () {
        timer += Time.deltaTime;

        if(timer > 10f)
        {
            //this.GetComponent<Fader>().FadeAndLoadScene(Fader.FadeDirection.In, "WhaleSpaceScene");
            SceneManager.LoadScene("WhaleSpaceScene", LoadSceneMode.Single);
        }
	}

  
}
