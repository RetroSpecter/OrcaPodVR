using UnityEngine;
using UnityEngine.Animations.Rigging;

public class mParent : MonoBehaviour
{
	public GameObject mParentCon;

	public void Start()
	{
		var constraint = mParentCon.GetComponent<MultiParentConstraint>();
		constraint.data.sourceObjects[0].weight = 1;
		constraint.data.sourceObjects[1].weight = 0;
		constraint.data.sourceObjects[2].weight = 0;
		constraint.data.MarkSourceWeightsDirty();
		Debug.Log ("ground");
	}
	public void hand()
	{
		var constraint = mParentCon.GetComponent<MultiParentConstraint>();
		constraint.data.sourceObjects[0].weight = 0;
		constraint.data.sourceObjects[1].weight = 1;
		constraint.data.sourceObjects[2].weight = 0;
		constraint.data.MarkSourceWeightsDirty();
		Debug.Log ("hand");
	}

	public void back()
	{
		var constraint = mParentCon.GetComponent<MultiParentConstraint>();
		constraint.data.sourceObjects[0].weight = 0;
		constraint.data.sourceObjects[1].weight = 0;
		constraint.data.sourceObjects[2].weight = 1;
		constraint.data.MarkSourceWeightsDirty();
		Debug.Log ("back");
	}
}
