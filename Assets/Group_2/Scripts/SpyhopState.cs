using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpyhopState : GameState {



    

    protected SpyhopState() { }

    private void Awake()
    {
        if (instance == null)
            instance = this;
        //Debug.Log(instance);
        DontDestroyOnLoad(instance);
    }
    public override void Init()
    {

    }
	
	// Update is called once per frame
	public override void Update () {
		
	}
}
