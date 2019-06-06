using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations.Rigging;

public class HeadAimController : MonoBehaviour
{

    public GameObject headAim;
    public float turnSpeed = 5;
    public GameObject[] targets;
    public int lookTarget;
    private Vector3 initialPosition;
    public Rig headRig;
    [Range(0, 1)]
    public float trackingWeight;
    public bool lookSwitch;

    [Header("Activation Angle Settings")]
    private Camera cam;
    public float visionRadius = 30;
    public GameObject head;

    // Start is called before the first frame update
    void Start()
    {
        initialPosition = headAim.transform.position;
        cam = Camera.main;
    }

    // Update is called once per frame
    void Update()
    {
        if (lookTarget == -1) {
            headAim.transform.position = Vector3.Lerp(headAim.transform.position,initialPosition,Time.deltaTime * turnSpeed);
        } else {
            headAim.transform.position = Vector3.Lerp(headAim.transform.position, targets[lookTarget].transform.position, Time.deltaTime * turnSpeed);
        }

        if (lookSwitch) {
            Vector3 angleToCam = head.transform.position - cam.transform.position;
            setWeight(Vector3.Angle(cam.transform.forward, angleToCam) < visionRadius ? 1 : 0);
        }
        headRig.weight = Mathf.Lerp(headRig.weight, trackingWeight, Time.deltaTime * 3);

    }

    public void lookAtTarget(int target) {
        lookTarget = target;
    }

    public void resetTarget() {
        lookTarget = -1;
    }

    public void setWeight(float targetWeight) {
        trackingWeight = targetWeight;
    }

    public void checkAudio(float audio) {
        if (audio > 0.2f && lookSwitch) {
            Vector3 angleToCam = head.transform.position - cam.transform.position;
            if (Vector3.Angle(cam.transform.forward, angleToCam) < visionRadius)
                AnimatorHandler.instance.ActivateTriggers("greet scarlet");
        }
    }
}
