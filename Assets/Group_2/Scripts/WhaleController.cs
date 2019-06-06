using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WhaleController : MonoBehaviour {

    public float speed = 2.0f;
    private Animator anim;

    public Transform player;
    private Transform whale;
    private float threshold = 0.0f;

    public float triggerDistance = 10.0f;

    public float returnDistance = 20.0f;

    //private Transform myTransform;

    public Transform swimPoint;
    private Vector3 swimDirection;

	// Use this for initialization
	void Start () {
        anim = this.GetComponent<Animator>();
       // myTransform = transform.GetComponentInParent<Transform>();
        //swimPoint = GameObject.Find("SwimPoint").GetComponent<Transform>();
        whale = this.transform;
        //swimDirection = swimPoint.position - myTransform.position;
	}

    private void Update()
    {
        if (Vector3.Distance(whale.position, swimPoint.position) > threshold)
        {
            //Debug.Log("Swim point still far");
            float distance = Vector3.Distance(whale.position, player.position);
            Debug.Log("Distance: " + distance);
            //Debug.Log();
            if (distance < triggerDistance)
            {
                //anim.SetBool("Swim", true);
                anim.SetBool("FollowUp", false);
                //Debug.Log("Player too close");
                swimDirection = swimPoint.position - whale.position;
                whale.position += swimDirection.normalized * Time.deltaTime * speed;
                //Debug.Log(whale.position);
            }
            else if (distance < 20.0f) // wait
            {
                Debug.Log("wait");
                //anim.SetBool("Follow", true);
                anim.SetBool("FollowUp", true);
                //anim.SetBool("Swim", false);
            }
            else // follow back 
            {
                Debug.Log("Player too far");
                //anim.SetBool("Swim", true);
                anim.SetBool("FollowUp", false);
                Vector3 followDirection = player.position - whale.position;
                whale.position += followDirection.normalized * Time.deltaTime * 4.0f;
            }
        }
        else
        {
            anim.SetBool("Surface", true);

        }
    }

    /*
	// Update is called once per frame
	void Update () {
        
        if (Vector3.Distance(myTransform.position, swimPoint.position) > 0.05f)
        {
            //Debug.Log("Swim point still far");
            float distance = Vector3.Distance(myTransform.position, player.position);
            if (distance < triggerDistance)
            {
                //Debug.Log("Player too close");
                swimDirection = swimPoint.position - myTransform.position;
                myTransform.position += swimDirection.normalized * Time.deltaTime * speed;
                //Debug.Log(myTransform.position);
            }
            else if (distance > 20.0f)
            {
                //Debug.Log("Player too far");
                Vector3 followDirection = player.position - myTransform.position;
                myTransform.position += followDirection.normalized * Time.deltaTime * 6.0f;
            }
        }
        else
            anim.SetBool("shouldSpyhop", true);
	    
    }*/
}
