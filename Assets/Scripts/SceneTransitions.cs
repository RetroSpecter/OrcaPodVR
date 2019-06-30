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
            Transition();
        }
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            StartCoroutine(LoadYourAsyncScene(1));
        }
        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            StartCoroutine(LoadYourAsyncScene(2));
        }
        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            StartCoroutine(LoadYourAsyncScene(3));
        }
    }

    public void Transition() {
// ScenesPlayed[SceneManager.GetActiveScene().buildIndex-1] = true;
        StartCoroutine(LoadYourAsyncScene(0));
    }

    public void Transition(string name) {
        print(name);
        if (name == "Granny")
            ScenesPlayed[0] = true;
        else if(name == "Scarlet")
            ScenesPlayed[1] = true;
        else if(name == "Tahlequah")
            ScenesPlayed[2] = true;
        else
            ScenesPlayed[3] = true;
        StartCoroutine(LoadYourAsyncScene(name));
    }

    IEnumerator LoadYourAsyncScene(string target)
    {
        // The Application loads the Scene in the background as the current Scene runs.
        // This is particularly good for creating loading screens.
        // You could also load the Scene by using sceneBuildIndex. In this case Scene2 has
        // a sceneBuildIndex of 1 as shown in Build Settings.

        AsyncOperation lastLoad = SceneManager.LoadSceneAsync(target);
        while (!lastLoad.isDone)
        {
            yield return null;
        }
    }


    IEnumerator LoadYourAsyncScene(int target)
    {
        // The Application loads the Scene in the background as the current Scene runs.
        // This is particularly good for creating loading screens.
        // You could also load the Scene by using sceneBuildIndex. In this case Scene2 has
        // a sceneBuildIndex of 1 as shown in Build Settings.

        AsyncOperation lastLoad = SceneManager.LoadSceneAsync(target);
        while (!lastLoad.isDone)
        {
            yield return null;
        }
    }
}
