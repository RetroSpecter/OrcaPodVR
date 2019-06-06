using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ManagerCallback : MonoBehaviour
{

    public void PlaySound(string sound)
    {
        AudioManager.instance.Play(sound);
    }

    public void PlayEvent(string eventName)
    {
        EventManager.instance.CallEvent(eventName);
    }
}
