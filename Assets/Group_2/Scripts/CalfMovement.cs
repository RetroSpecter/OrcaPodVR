using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CalfMovement : MonoBehaviour
{
    public BezierSpline spline;
    public GameObject parent;
    public GameObject damped;

    public float blend;

    private Animator anim;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        bool parentSwim = parent.GetComponent<Animator>().GetBool("Swim");
        if (parentSwim)
        {
            
            blend = Mathf.Clamp01(blend + Time.deltaTime / 3);
            anim.SetBool("Swim", true);

        }
        else
        {
            blend = Mathf.Clamp01(blend - Time.deltaTime / 3);
            anim.SetBool("Swim", false);
        }
        transform.position = Vector3.Lerp(damped.transform.position, getPositionOnSpline(), blend);
        lookAtParent();
    }
    
    public Vector3 getPositionOnSpline()
    {
        float dt = parent.GetComponent<SplineWalker>().getProperTimeProgressive(-1, false);
        return spline.GetPoint(parent.GetComponent<SplineWalker>().progress + dt);
        
    }

    public Vector3 getDirectionOnSpline()
    {
        float dt = parent.GetComponent<SplineWalker>().getProperTimeProgressive(-1.5f, false);
        return spline.GetDirection(parent.GetComponent<SplineWalker>().progress + dt);
    }
    
    public void lookAtParent()
    {
        float angularSpeed = 2;
        if (blend == 1)
        {
            transform.forward = Vector3.RotateTowards(transform.forward, getDirectionOnSpline(), angularSpeed * Time.deltaTime, 0);
        } else
        {
            transform.forward = Vector3.RotateTowards(transform.forward, parent.transform.position - transform.position, angularSpeed * Time.deltaTime, 0);
        }
        

        // positive - counterclockwise, negative - clockwise
        Vector3 toParent = parent.transform.position - transform.position;
        float sign = Mathf.Sign(Vector3.Cross(transform.forward, toParent).y);
        float cos = Vector3.Dot(transform.forward.normalized, toParent.normalized);
        float prev = GetComponent<Animator>().GetFloat("Direction");
        float next = 0.5f + sign * (1 - cos);
        float v = prev + Mathf.Sign(next - prev) * Mathf.Min(Mathf.Abs(next - prev), 0.5f * Time.deltaTime);
        anim.SetFloat("Direction", v);
    }

    public void RandomSpeed()
    {
        float speed = Random.Range(0.75f, 1.25f);
        anim.SetFloat("speed", speed);
    }
}
