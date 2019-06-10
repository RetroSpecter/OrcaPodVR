using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneTransitions : MonoBehaviour
{

    public static SceneTransitions instance;
    public bool[] ScenesPlayed;
    void Awake() {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(this.gameObject);
        }
        else {
            Destroy(this.gameObject);
        }

        ScenesPlayed = new bool[3]; //Granny, Scarlet, Tahlequah
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha0))
        {
            SceneManager.LoadScene(0);
        }
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            SceneManager.LoadScene(1);
        }
        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            SceneManager.LoadScene(2);
        }
        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            SceneManager.LoadScene(3);
        }
    }

    public void Transition() {
        ScenesPlayed[SceneManager.GetActiveScene().buildIndex-1] = true;
        SceneManager.LoadScene(0);
    }

    public void Transition(string name) {
        print(name);
        SceneManager.LoadScene(name);
    }
}
