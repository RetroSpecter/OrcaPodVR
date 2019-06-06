using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

    public float speed;
    public float maxDistance;

    public GameObject VrCamera;
    public GameObject leftController, rightController;
    public float swimAngle = 45;

    public List<gestureAngle> inputs = new List<gestureAngle>();
    public float maxFrameData = 80;

    // Update is called once per frame
    void Update() {


        Vector3 cameraDirection = Vector3.ProjectOnPlane(VrCamera.transform.forward, transform.up);
        Debug.DrawRay(transform.position, cameraDirection, Color.green);


        Vector3 leftControllerDirection = leftController.transform.position - transform.position;
        leftControllerDirection = Vector3.ProjectOnPlane(leftControllerDirection.normalized, transform.up);
        Debug.DrawRay(transform.position, leftControllerDirection, Color.red);

        Vector3 rightControllerDirection = rightController.transform.position - transform.position;
        rightControllerDirection = Vector3.ProjectOnPlane(rightControllerDirection.normalized, transform.up);

        gestureAngle ga = new gestureAngle(cameraDirection, leftControllerDirection, rightControllerDirection, swimAngle);
        inputs.Add(ga);

        
        float minDistance = Mathf.Infinity;
        float maxDistance = Mathf.NegativeInfinity;
        for (int i = 1; i < inputs.Count; i++) {
            if (inputs[i-1].angleBetweenHands() > inputs[i].angleBetweenHands()) {
                inputs.Clear();
                break;
            }
            minDistance = Mathf.Min(inputs[i].angleBetweenHands(), minDistance);
            maxDistance = Mathf.Max(inputs[i].angleBetweenHands(), maxDistance);

            if (maxDistance - minDistance > swimAngle) {
                SwimForward();
                inputs.Clear();
            }
        }

        if (Input.GetKeyDown(KeyCode.Space)) {
            print(ga.asdf());
        }

        if (maxFrameData < inputs.Count)
            inputs.RemoveAt(0);

	}

    void SwimForward() {
        if(curSwim != null) {
            StopCoroutine(curSwim);    
        }
        curSwim = SwimForwardCor(maxDistance, speed, VrCamera.transform.forward);
        StartCoroutine(curSwim);
    }

    IEnumerator curSwim;
    IEnumerator SwimForwardCor(float distance, float speed, Vector3 direction) {
        Vector3 targetPos = transform.position + direction * distance;
        while (Vector3.Distance(transform.position, targetPos) > 0.1f) {
            transform.Translate(direction * speed);
            yield return null;
        }
        curSwim = null;
    }

    [System.Serializable]
    public struct gestureAngle {
        public float leftToCamera;
        public float rightToCamera;
        public float swimAngle;

        public gestureAngle(Vector3 cam, Vector3 left, Vector3 right, float swimAngle) {
            leftToCamera = Vector3.Angle(cam, left);
            rightToCamera = Vector3.Angle(cam, right);
            this.swimAngle = swimAngle;
        }

        public float angleBetweenHands() {
            return leftToCamera + rightToCamera;
        }

        public bool isValidSwimMotion() {
            return rightToCamera > swimAngle && leftToCamera > swimAngle;
        }

        public string asdf()
        {
            return "left angle: " + leftToCamera + " right angle: " + rightToCamera + "angleBetween hands: " + angleBetweenHands() + "valid:" + isValidSwimMotion();
        }
    }
}
