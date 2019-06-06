using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CausticController : MonoBehaviour
{
    public Material mat;
    public GameObject[] bones;
    public float tallest;
    public float shortest;

    // Update is called once per frame
    void Update()
    {
         tallest = -Mathf.Infinity;
         shortest = Mathf.Infinity;
        foreach (GameObject bone in bones) {
            tallest = Mathf.Max(bone.transform.position.y, tallest);
            shortest = Mathf.Min(bone.transform.position.y, shortest);
        }

        mat.SetVector("_caustic_range", new Vector4(shortest, tallest, 0, 0));
    }
}
