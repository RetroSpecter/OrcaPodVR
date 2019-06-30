using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VisibilityFreeSwim : VisiblityManager
{
    // Start is called before the first frame update
    protected override void Start()
    {
        if (AreAllComplete())
        {
            objects[0].SetActive(false);
            objects[1].SetActive(true);
        }
        else
        {
            objects[0].SetActive(true);
            objects[1].SetActive(false);
            // foreach (GameObject o in objects)
            //   o.SetActive(false);
        }
    }
}
