using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SplashManager : MonoBehaviour
{

    public Transform player;
    public Transform OceanPlane;

    public ParticleSystem userMove, water;
    public ParticleSystem playerSplash;

    private bool prevState;
    private float oceanHeight;

    // Use this for initialization
    void Start()
    {
        prevState = IsAboveWater();
        oceanHeight = OceanPlane.position.y;
    }

    // Update is called once per frame
    void Update()
    {
        bool state = IsAboveWater();
        if (state)
        {
            if (state != prevState)
            {
                userMove.gameObject.SetActive(false);
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
                water.gameObject.SetActive(true);
                prevState = state;
            }
        }
    }
    bool IsAboveWater()
    {
        return player.position.y > oceanHeight;
    }

    void playPlayerSplash()
    {
        playerSplash.Play();
    }
}
