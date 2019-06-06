using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Eat_Fish2_Behaviour : StateMachineBehaviour {

    Vector3 fishpos;
    Vector3 startpos;
    float starttime;
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        startpos = animator.transform.position;
        fishpos = animator.GetComponent<Granny_Behavior>().getfishpos();
        starttime = Time.time;
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.transform.position = Vector3.Lerp(animator.transform.position, fishpos, Time.deltaTime * 0.2f);
        if ((Time.time - starttime) > 4.25)
        { 
            animator.GetComponent<Granny_Behavior>().hideSalmon();

            animator.GetComponent<Granny_Behavior>().chewing.Play();
        }
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
       // animator.transform.Translate(startpos);
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
