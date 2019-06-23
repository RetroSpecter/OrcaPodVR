using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

// Free swim rock is a version of volume rock for the free swim mode
// Hopefuly this is easier to use. 
public class FreeSwimRock : VolumeRock
{
    [Header("Free swim rock properties"), Tooltip("functions called when rock is succesful")]
    public UnityEvent playRockActions;
    
    [Tooltip("time it takes for the rock to be usable again")]
    public float restartTime = 10;
    private float curTime = 0;

    protected override void Start()
    {
        curTime = restartTime;
        base.Start();
    }
    protected override void Update()
    {

        curTime += Time.deltaTime;
        // TODO: this is pretty lazy. would want to replace music rock with this in general
        if (GetComponent<MusicRock>() != null)
            active = GetComponent<MusicRock>().isActive;

        if (canRegisterSinging() && active && curTime > restartTime)
        {
            if (CurMonitorVolume == null)
            {
                CurMonitorVolume = MonitorVolume();
                StartCoroutine(CurMonitorVolume);
            }
        }
        else
        {
            if (CurMonitorVolume != null)
            {
                if (changeSoundBack != null)
                {
                    cameraSource.clip = changeSoundBack;
                }
                StopCoroutine(CurMonitorVolume);
                CurMonitorVolume = null;
            }
        }

    }

    // what happens when the rock successfully is used
    public override void PlayRock() {
        playRockActions.Invoke();
        curTime = 0;
    }
}
