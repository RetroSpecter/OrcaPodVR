using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using UnityEngine.Events;

public class EventManager : MonoBehaviour {

    public static EventManager instance;
    public AnimationEvent[] events;
    private Dictionary<string, AnimationEvent> dict;

	// Use this for initialization
	void Awake () {
        instance = this;
        dict = new Dictionary<string, AnimationEvent>();
        foreach (AnimationEvent e in events) {
            if (dict.ContainsKey(name)) {
                Debug.LogError("duplicate name in EventManager events");
            }
            dict.Add(e.name, e);
        }
	}

    public void CallEvent(string name) {
        if (!dict.ContainsKey(name)) {
            Debug.LogError("event " + name + " doesn't exist");
            return;
        }

        dict[name].eventCall.Invoke();
    }
}

[System.Serializable]
public struct AnimationEvent {
    public string name;
    public UnityEvent eventCall;
} 
