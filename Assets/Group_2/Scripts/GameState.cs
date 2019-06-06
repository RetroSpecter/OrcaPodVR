using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class GameState : MonoBehaviour {

    public static GameState instance = null;

    protected GameState() { }

    public void Awake()
    {
        if (instance == null)
            instance = this;
        //Debug.Log(instance);
        DontDestroyOnLoad(instance);
    }

    // Use this for initialization
    public abstract void Init();

    // Update is called once per frame
    public abstract void Update();


    
}
