using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DC : MonoBehaviour
{

    [SerializeField] GameObject damp;
    [SerializeField] GameObject chain;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.S))
        {
            damp.SetActive(false);
            chain.SetActive(true);
        }
        if(Input.GetKeyUp(KeyCode.S))
        {
            damp.SetActive(true);
            chain.SetActive(false);
        }
    }
}
