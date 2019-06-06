using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// Singleton class
public class GameStateManager : MonoBehaviour {

    public static GameStateManager instance = null;
    private GameState currentGameState { get; set; }

    public static GameStateManager Instance
    {
        get
        {
            if (GameStateManager.instance == null)
            {
                GameStateManager.instance = new GameStateManager();
                if (instance == null) Debug.Log("Why is the gameStateManager null???");
                //DontDestroyOnLoad(instance);
            }
            return GameStateManager.instance;
        }
    }

    private void Awake()
    {
        if (instance == null)
            instance = this;
        DontDestroyOnLoad(instance);
    }

    protected GameStateManager()
    {

    }

    public void ChangeGameState(GameState gameState)
    {
        currentGameState.enabled = false;
        currentGameState = gameState;
        currentGameState.enabled = true;
        currentGameState.Init();
    }

	// Use this for initialization
	public void Start () {
        if (currentGameState == null)
            ChangeGameState(SwimState.instance);
	}
	
	// Update is called once per frame
	public void Update () {
        currentGameState.Update();
	}
}
