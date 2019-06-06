using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class salmon_behavior : MonoBehaviour
{
    [SerializeField] Transform leftPos;
    [SerializeField] Transform rightPos;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnTriggerEnter(Collider other)
    {
        //Debug.Log(other.gameObject.name);
        if (other.gameObject.name == "chainIK")
        {
            if(other.gameObject.tag == "left")
            {
                Debug.Log("collisionl");
                this.transform.SetParent(other.transform);
            }
            else if(other.gameObject.tag == "right")
            {
                Debug.Log("collisionr");
                this.transform.SetParent(other.transform);
            }
        }
    }
}
