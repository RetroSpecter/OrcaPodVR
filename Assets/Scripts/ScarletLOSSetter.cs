using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScarletLOSSetter : StateMachineBehaviour {

    public float visionRadius = 90;
    public bool IsInGaze = false;
    public string triggerName = "Look Away";

	 // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        LOSTrigger los = animator.GetComponent<LOSTrigger>();
        if (los != null) {
            los.visionRadius = visionRadius;
            los.isInGaze = IsInGaze;
            los.triggerName = triggerName;
        }
	}
}
