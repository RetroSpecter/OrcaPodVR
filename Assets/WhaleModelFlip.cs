using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WhaleModelFlip : MonoBehaviour
{

    public GameObject[] whaleModels;
    public Vector3 hiddenPosition = new Vector3(100,100,100);
    public Vector3[] realPosition;
    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < whaleModels.Length; i++)
        {
            realPosition[i] = whaleModels[i].transform.position;
        }
        switchModel(0);
    }

    public void switchModel(int index) {
        for (int i = 0; i < whaleModels.Length; i++) {
            if (i == index)
                whaleModels[i].transform.position = realPosition[i];
            else
                whaleModels[i].transform.position = hiddenPosition;
        }
    }
}
