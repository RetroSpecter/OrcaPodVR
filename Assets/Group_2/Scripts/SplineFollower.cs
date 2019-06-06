using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SplineFollower : MonoBehaviour
{
    public Transform target;
    // The spline has to go clockwise
    public BezierSpline spline;
    public float step;

    private void Update()
    {
        // only used for debugging
        //transform.position = GetPosition(target.position);
    }


    public Vector3 GetPosition(Vector3 targetPosi)
    {
        Vector3 result = spline.GetPoint(0f);
        float t = 0;
        float searchStep = step;
        Vector3 selfToOriginXZ = new Vector3((result - spline.transform.position).x, 0, (result - spline.transform.position).z);
        Vector3 targetToOriginXZ = new Vector3((targetPosi - spline.transform.position).x, 0, (targetPosi - spline.transform.position).z);
        Vector3 cross = Vector3.Cross(selfToOriginXZ.normalized, targetToOriginXZ.normalized);
        float sine = cross.magnitude;
        Vector3 prevCross = cross;
        
        float count = 1000;
        while ((cross.magnitude > 0.01f || Vector3.Dot(selfToOriginXZ, targetToOriginXZ) < 0) && count > 0)
        {
            float prevT = t;
            Vector3 prevResult = result;
            Vector3 prevStoO = selfToOriginXZ;
            count--;
            if (t >= 1)
            {
                t = t + searchStep - 1;
            } else
            {
                t += searchStep;
            }
            result = spline.GetPoint(t);
            selfToOriginXZ = new Vector3((result - spline.transform.position).x, 0, (result - spline.transform.position).z);
            cross = Vector3.Cross(selfToOriginXZ.normalized, targetToOriginXZ.normalized);
            
            // When overshoots
            if (cross.y * prevCross.y < 0 && Vector3.Dot(selfToOriginXZ, targetToOriginXZ) > 0)
            {
                searchStep = searchStep / 2;
                t = prevT;
                result = prevResult;
                cross = prevCross;
                selfToOriginXZ = prevStoO;
            } else
            {
                prevCross = cross;
            }
            
        }
        return result;
    }
}
