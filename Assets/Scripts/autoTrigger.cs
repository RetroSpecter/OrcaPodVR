using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class autoTrigger : StateMachineBehaviour {

    public float seconds;
    float curSeconds;
    public string trigger;

    public override void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        curSeconds = seconds;
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        curSeconds -= Time.deltaTime;
        if (curSeconds < 0) {
            AnimatorHandler.instance.ActivateTriggers(trigger);
        }
	}

}
