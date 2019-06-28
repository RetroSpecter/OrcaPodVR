using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations;

public class Fish_Gameobject_Behaviour : MonoBehaviour
{


    readonly int dropfish = Animator.StringToHash("dropFish");
    readonly int makesmall = Animator.StringToHash("makesmall");
    Animator aniamtor;
    bool movedown = false, ismoveforward = false;
    public Transform pos; //pos2 ued by salmon 2&3
    public float distance;
    [SerializeField] Transform Camera;
    [SerializeField] bool isone;
    Quaternion rot;
    Vector3 pos2;

    // Use this for initialization
    void Start()
    {
        aniamtor = GetComponent<Animator>();
        rot = new Quaternion(0, 1.2f, 0, 0);
        pos2 = Camera.position;
    }

    // Update is called once per frame
    void Update()
    {
        if (movedown && isone)
        {
            transform.position = Vector3.Lerp(transform.position, pos.position, Time.deltaTime * 0.4f);
            transform.rotation = Quaternion.Lerp(transform.rotation, rot, 0.4f * Time.deltaTime);
            if (Vector3.Distance(transform.position, pos.position) < .4f)
            {
                movedown = false;
            }
        }
        if (ismoveforward)
        {
            transform.position = Vector3.MoveTowards(transform.position, pos2, Time.deltaTime * 0.85f);
            transform.rotation = Quaternion.Lerp(transform.rotation, rot, 0.4f * Time.deltaTime);
            if (Vector3.Distance(transform.position, pos2) < .4f)
                ismoveforward = false;
        }

    }
    public void show()
    {
        gameObject.SetActive(true);
    }

    public void unbend()
    {
        gameObject.GetComponent<ParentConstraint>().constraintActive = false;
        transform.localScale = new Vector3(0.75f, 0.75f, 0.75f);
        aniamtor.SetTrigger(dropfish);
        if (isone)
            movedown = true;
        else
            ismoveforward = true;
    }

    public void moveforward()
    {
        ismoveforward = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("stoparea"))
        {
            ismoveforward = true;
        }
    }

    public void scalechange()
    {
        aniamtor.SetTrigger(makesmall);
    }
}
