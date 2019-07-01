using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ScenePlayed : MonoBehaviour
{
    public static bool[] Scenesstate = new bool[3];

    void Awake()
    {
        //Debug.Log("SC"+SceneManager.GetActiveScene().name);
        if (SceneManager.GetActiveScene().name == "Granny")
            Scenesstate[0] = true;
        if (SceneManager.GetActiveScene().name == "Scarlet")
            Scenesstate[1] = true;
        if (SceneManager.GetActiveScene().name == "Tahlequah")
            Scenesstate[2] = true;
    }

    private void Reset()
    {
        for (int i = 0; i < Scenesstate.Length; i++)
            Scenesstate[i] = false;
    }
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.P))
            Reset();
    }
}
