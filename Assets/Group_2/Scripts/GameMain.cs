using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// The main loop for the game engine
public class GameMain : MonoBehaviour{

    //private GameStateManager gsm;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        GameStateManager.instance.Update();
    }
}
