using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LOSTrigger : MonoBehaviour
{
    public float visionRadius = 45;
    public bool isInGaze = true;
    private bool gaze;
    private Camera cam;
    public string triggerName;

    // Start is called before the first frame update
    void Start() {
        cam = Camera.main;
    }

    
    // Update is called once per frame
    void Update() {
        Vector3 angleToCam = transform.position - cam.transform.position;
        angleToCam.y = 0;

        if (Vector3.Angle(cam.transform.forward, angleToCam) < visionRadius == isInGaze)
        {
            if (!gaze) {
                print("out of gaze");
                AnimatorHandler.instance.ActivateTriggers(triggerName);
                gaze = true;
            }
        }
        else {
            gaze = false;
        }
    }
}
