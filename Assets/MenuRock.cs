using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuRock : MusicRock
{
    public override bool OnSelected(CameraRaycast camera)
    {
        if (!isActive) return false;

        if (select != null)
            select();

        if (currentTimer == null)
        {
            currentTimer = timeToLook(lookTimer);
            StartCoroutine(currentTimer);
        }
        rg.OnSelected();
        return true;
    }
}
