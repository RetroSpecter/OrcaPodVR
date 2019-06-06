using UnityEngine;
using System.Collections;

public class BoidController : MonoBehaviour
{
    public float minVelocity = 5;
    public float maxVelocity = 20;
    public float randomness = 1;
    public GameObject chasee;

    public Vector3 flockCenter;
    public Vector3 flockVelocity;

    public GameObject[] boids;

    void Start()
    {
        for (var i = 0; i < boids.Length; i++)
        {
            boids[i].transform.parent = transform;
            boids[i].GetComponent<BoidFlocking>().SetController(gameObject);
        }
    }

    void Update()
    {
        Vector3 theCenter = Vector3.zero;
        Vector3 theVelocity = Vector3.zero;

        foreach (GameObject boid in boids)
        {
            theCenter = theCenter + boid.transform.localPosition;
            theVelocity = theVelocity + boid.GetComponent<Rigidbody>().velocity;
        }

        flockCenter = theCenter / (boids.Length);
        flockVelocity = theVelocity / (boids.Length);
    }
}