using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleManager : MonoBehaviour {

    public Transform player;
    public Transform whale;
    public Transform OceanPlane;

    public ParticleSystem userMove, whaleMove, water;
    public ParticleSystem whaleSplash, playerSplash;

    private bool prevState;
    private bool prevWhaleState;
    private float oceanHeight;

    // Use this for initialization
    void Start () {
        prevState = IsAboveWater();
        prevWhaleState = IsWhaleAboveWater();
        oceanHeight = OceanPlane.position.y;
    }
	
	// Update is called once per frame
	void Update () {
        bool state = IsAboveWater();
		if (state)
        {
            if (state != prevState)
            {
                userMove.gameObject.SetActive(false);
                whaleMove.gameObject.SetActive(false);
                water.gameObject.SetActive(false);
                playPlayerSplash();
                prevState = state;
            }    
        }
        else
        {
            if (state != prevState)
            {
                userMove.gameObject.SetActive(true);
                whaleMove.gameObject.SetActive(true);
                water.gameObject.SetActive(true);
                prevState = state;
            }
        }

        bool whaleState = IsWhaleAboveWater();
        if (whaleState)
        {
            if (whaleState != prevWhaleState)
            {
                playWhaleSplash();
                prevWhaleState = whaleState;
            }
        }
        else
        {
            if (whaleState != prevWhaleState)
            {
                prevWhaleState = whaleState;
            }
        }
    }
    bool IsAboveWater()
    {
        return player.position.y > oceanHeight;
    }

    bool IsWhaleAboveWater()
    {
        return whale.position.y > oceanHeight;
    }

    void playPlayerSplash()
    {
        playerSplash.Play();
    }

    void playWhaleSplash()
    {
        whaleSplash.Play();
    }
}
