using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwimState : GameState {

    public float speed = 2.0f;
    private Animator anim;

    public Transform player;
    public Transform whale;

    public float triggerDistance = 10.0f;

    public float returnDistance = 20.0f;


    private Transform swimPoint;
    private Vector3 swimDirection;

    private float timer;

    /*
    public static SwimState Instance
    {
        get
        {
            if(instance == null)
            {
                instance = new SwimState();
                //DontDestroyOnLoad(instance);
            }
            return (SwimState)instance;
        }
    }*/

    

    protected SwimState() {  }

    public void Awake()
    {
        if (instance == null)
            instance = this;
        //Debug.Log(instance);
        DontDestroyOnLoad(instance);
    }

    // Use this for initialization
    void Start () {
		
	}
    public override void Init()
    {
        anim = whale.GetComponent<Animator>();//this.GetComponent<Animator>();
        //whale = transform.GetComponentInParent<Transform>();
        swimPoint = GameObject.Find("SwimPoint").GetComponent<Transform>();
        //swimDirection = swimPoint.position - whale.position;
    }
    // Update is called once per frame
    public override void Update () {
        if (Vector3.Distance(whale.position, swimPoint.position) > 0.05f)
        {
            Debug.Log("Swim point still far");
            float distance = Vector3.Distance(whale.position, player.position);
            if (distance < triggerDistance)
            {
                anim.SetBool("Swim", true);
                //Debug.Log("Player too close");
                swimDirection = swimPoint.position - whale.position;
                whale.position += swimDirection.normalized * Time.deltaTime * speed;
                //Debug.Log(whale.position);
            }
            else if (distance < 20.0f) // wait
            {
                
                //anim.SetBool("Follow", true);
                anim.SetBool("FollowUp", true);
                anim.SetBool("Swim", false);
            }
            else // follow back 
            {
                //Debug.Log("Player too far");
                anim.SetBool("Swim", true);
                Vector3 followDirection = player.position - whale.position;
                whale.position += followDirection.normalized * Time.deltaTime * 6.0f;
            }
        }
        else
            GameStateManager.Instance.ChangeGameState(SpyhopState.instance);
    }
}
