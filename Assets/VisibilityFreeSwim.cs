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
            foreach (GameObject o in objects)
                o.SetActive(true);
        }
        else
        {
            foreach (GameObject o in objects)
                o.SetActive(false);
        }
    }
}
