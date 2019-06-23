using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VisiblityManager : MonoBehaviour
{

    public int sceneIndex;
    public GameObject[] objects;

    // Start is called before the first frame update
    protected virtual void Start()
    {
        if (IsExperienceComplete(sceneIndex))
        {
            foreach (GameObject o in objects)
                o.SetActive(true);
        }
        else {
            foreach (GameObject o in objects)
                o.SetActive(false);
        }
    }

    public virtual bool IsExperienceComplete(int index) {
        return SceneTransitions.instance.ScenesPlayed[index];
    }

    public virtual bool AreAllComplete()
    {
        foreach (bool b in SceneTransitions.instance.ScenesPlayed)
            if (!b)
                return false;
        return true;
    }
}
