using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockActivation : StateMachineBehaviour {

    public int rockIndex;
	 
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        RockManager.instance.ActivateRock(rockIndex);
	}
}
