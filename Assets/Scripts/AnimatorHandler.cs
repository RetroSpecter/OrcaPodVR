using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimatorHandler : MonoBehaviour {

    public Animator[] animators;
    [Space()]
    [Tooltip("debug keys to activate specific triggers")]
    public debugTrigger[] debugTriggers;
    public static AnimatorHandler instance;

    private void Start()
    {
        instance = this;
    }

    // Update is called once per frame
    void Update () {
        if (Input.GetKeyDown(KeyCode.Escape)) Application.Quit();

        if (Input.GetKeyDown(KeyCode.R)) Application.LoadLevel(Application.loadedLevel);

        foreach (debugTrigger d in debugTriggers) {
            if (Input.GetKeyDown(d.input))
            {
                AnimatorHandler.instance.ActivateTriggers(d.trigger);
            }
        }
	}

    public virtual void ActivateTriggers(string triggerName) {
        foreach(Animator anim in animators)
        {
            anim.SetTrigger(triggerName);
        }

        StartCoroutine(resetTrigger(triggerName));
    }

    public void reset() {
        SceneTransitions.instance.Transition();
    }

    IEnumerator resetTrigger(string triggerName) {
        yield return new WaitForSeconds(0.5f);
        foreach (Animator anim in animators)
        {
            anim.ResetTrigger(triggerName);
        }
    }
}

[System.Serializable]
public struct debugTrigger {
    public string name;
    public string trigger;

    [KeyCodeUI]
    public KeyCode input;
}