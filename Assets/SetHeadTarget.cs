using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetHeadTarget : StateMachineBehaviour
{

    public int targetIndex;
    public float weight = 1;
    public bool lookSwitch;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        HeadAimController hac = animator.GetComponent<HeadAimController>();
        hac.lookSwitch = lookSwitch;
        if (hac != null) {
            hac.setWeight(weight);
            if (targetIndex != -1)
                hac.lookAtTarget(targetIndex);
            else
                hac.resetTarget();
        }
    }
}
