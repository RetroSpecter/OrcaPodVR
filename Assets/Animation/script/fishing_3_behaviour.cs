using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class fishing_3_behaviour : StateMachineBehaviour {

    float starttime;
    bool callonce = false;

    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        starttime = Time.time;
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if ((Time.time - starttime) > 8.10 && !callonce)
        {
            callonce = true;
            animator.GetComponent<Granny_Behavior>().showSalmon3();
           
        }

        if((Time.time - starttime) > 10.50 && callonce)
        {
            animator.GetComponent<Granny_Behavior>().showRound();
            animator.GetComponent<Granny_Behavior>().showWill();
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        int gofishHash = Animator.StringToHash("fish_trigger");
        int ending = Animator.StringToHash("ending");
        animator.ResetTrigger(gofishHash);
        animator.SetBool(ending, true);
    }

    // OnStateMove is called right after Animator.OnAnimatorMove(). Code that processes and affects root motion should be implemented here
    //override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    //
    //}

    // OnStateIK is called right after Animator.OnAnimatorIK(). Code that sets up animation IK (inverse kinematics) should be implemented here.
    //override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    //
    //}
}
