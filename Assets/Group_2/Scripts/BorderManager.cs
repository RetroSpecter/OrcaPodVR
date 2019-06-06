using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BorderManager : MonoBehaviour
{
    // A group of borders, for different game phases
    public GameObject[] borderGroups;
    public GameObject player;
    // The active border group
    private int currentGroup;

    public void Start()
    {
        currentGroup = -1;
    }

    public void UpdateBorder() 
    {
        if (currentGroup == -1)
        {
            currentGroup++;
            return;
        }
        if (currentGroup < borderGroups.Length - 1)
        {
            borderGroups[currentGroup].SetActive(false);
            borderGroups[++currentGroup].SetActive(true);
            player.GetComponent<SplineFollower>().spline = borderGroups[currentGroup].GetComponent<BezierSpline>();
            player.GetComponent<SplineBorderVelocity>().spline = borderGroups[currentGroup].transform;
        }
        
    }
}
