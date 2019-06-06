using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SplineBorderVelocity : MonoBehaviour
{

    public Transform spline;
    public float penetrationDistance;
    public Transform dummy;
    // Update is called once per frame
    void Update()
    {
        
    }

    public Vector3 GetVelocity(Vector3 delta)
    {
        // Calcutes the corresponding position on the spline for both the current and next position
        Vector3 currentFollowerPosi = GetComponent<SplineFollower>().GetPosition(X0Z(transform.position));
        dummy.position = currentFollowerPosi;
        
        // Calculates radial distances
        Vector3 deltaXZ = new Vector3(delta.x, 0, delta.z);
        float currentRadialDistance = X0Z((transform.position - spline.transform.position)).magnitude - 
                                      X0Z((currentFollowerPosi - spline.transform.position)).magnitude;
        currentRadialDistance = Mathf.Max(0, currentRadialDistance);
        // Calculates how much can the player proceed
        float ratio = currentRadialDistance / penetrationDistance;
        
        Vector3 nextFollowerPosi = GetComponent<SplineFollower>().GetPosition(X0Z(transform.position + delta));
        float nextRadialDistance = X0Z(transform.position + delta - spline.transform.position).magnitude -
                                   X0Z(nextFollowerPosi - spline.transform.position).magnitude;

        nextRadialDistance = Mathf.Max(0, nextRadialDistance);

        // We only need to slow the player when he is going further along the radius
        // if the player is gonna go beyond the border, just set radial distance to penetration distance.
        if (nextRadialDistance > currentRadialDistance)
        {
            delta *= (1 - ratio);
            // Recalculate 
            nextFollowerPosi = GetComponent<SplineFollower>().GetPosition(X0Z(transform.position + delta));
            nextRadialDistance = X0Z(transform.position + delta - spline.transform.position).magnitude -
                                   X0Z(nextFollowerPosi - spline.transform.position).magnitude;
            nextRadialDistance = Mathf.Max(0, nextRadialDistance);

            Vector3 radialDirection = X0Z(nextFollowerPosi - spline.transform.position).normalized;
            float allowedRadialDistance = (currentRadialDistance + (nextRadialDistance - currentRadialDistance) * (1 - currentRadialDistance / penetrationDistance));
            allowedRadialDistance = Mathf.Min(allowedRadialDistance, penetrationDistance);
            Vector3 dest = nextFollowerPosi +  radialDirection * allowedRadialDistance;
            return  X0Z(dest- transform.position) + new Vector3(0, 1, 0) * delta.y;
        } else
        {
            return delta;
        }

    }

    private Vector3 X0Z(Vector3 v)
    {
        return new Vector3(v.x, 0, v.z);
    }
}
