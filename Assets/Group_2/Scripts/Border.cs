using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class Border : MonoBehaviour
{
    // How far the player can get into the collider before the movement is stopped, 
    public float penetrationDistance;


    private BoxCollider bc;

    // Start is called before the first frame update
    void Start()
    {
        bc = GetComponent<BoxCollider>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public Vector3 GetVelocity(Vector3 playerPosition, Vector3 intendedVelocity)
    {
        // The x-axis value of the box plane whose normal is the same as the local x axis
        float x = bc.center.x + bc.size.x;

        Vector3 otherInLocal = transform.InverseTransformPoint(playerPosition);
        Vector3 velocityInLocal = transform.InverseTransformDirection(intendedVelocity);
        float ratio = Mathf.Clamp01(1 - Mathf.Abs(otherInLocal.x - (bc.size.x) / 2) / penetrationDistance);

        if (velocityInLocal.x < 0)
        {
            velocityInLocal *= ratio;
        }

        intendedVelocity = transform.TransformDirection(velocityInLocal);

        return intendedVelocity;
        
    }


    private void OnTriggerEnter(Collider other)
    {
        print(other);
        if (other.CompareTag("Player"))
        {
            BorderVelocity.AddBorder(transform.gameObject);
        }
        
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            BorderVelocity.RemoveBorder(transform.gameObject);
        }
    }

}
