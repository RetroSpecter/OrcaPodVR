using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class BorderVelocity
{
    public static List<GameObject> currentBorders;

    static BorderVelocity()
    {
        currentBorders = new List<GameObject>();
    }

    public static Vector3 GetVelocity(Vector3 playerPosition, Vector3 intendedVelocity) 
    {
        Debug.Log(currentBorders.Count);
        foreach (GameObject go in currentBorders)
        {
            intendedVelocity = go.GetComponent<Border>().GetVelocity(playerPosition, intendedVelocity);
        }
        return intendedVelocity;
    }

    public static void AddBorder(GameObject border)
    {
        currentBorders.Add(border);
    }

    public static void RemoveBorder(GameObject border)
    {
        currentBorders.Remove(border);
    }

}
