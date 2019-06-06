using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine.XR;

public class FollowPath : MonoBehaviour
{
    [SerializeField]
    public Transform player, whale;
    // The numerical speed
    public float speed = 3.0f;
    public float lookSpeed = 0.5f;
    public float triggerDistance;
    public List<Transform> waypoints;
    public PostProcessVolume post;
    public GameObject VRCam;
    public bool debug;
    // The original waypoits are no longer used.
    public int current, target;
    public float collisionDistance;
    private float initialVignette;
    private Collision TerrainCollision;
    // Where the player starts during *this* round
    private Vector3 startPoint;
    private bool prevWhaleReached;

    // Start is called before the first frame update
    void Start()
    {
        // no movement on y axis.
        //refSpeed = new Vector3(1, 0, 1);
        var device = InputDevices.GetDeviceAtXRNode(XRNode.LeftHand);
        if(device != null)
        {
            //device.TryGetFeatureValue()
        }

        current = 0;
        target = 1;
        Vignette v = ScriptableObject.CreateInstance<Vignette>();
        Vignette VignetteLayer = null;
        post.profile.TryGetSettings(out VignetteLayer);
        initialVignette = VignetteLayer.intensity.value;
    
    }

    // Update is called once per frame
    void Update()
    {
        Vignette VignetteLayer = null;
        post.profile.TryGetSettings(out VignetteLayer);
        float amount = Mathf.Max(0, OVRInput.Get(OVRInput.RawAxis2D.LThumbstick).y);
        VignetteLayer.intensity.value = initialVignette + amount / 2;

        /*if (target < 6)
        {
            var targetRotation = Quaternion.LookRotation(waypoints[target].position - transform.position);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, lookSpeed * Time.deltaTime);
        } else
        {
            var targetRotation = Quaternion.LookRotation(new Vector3(0,0,0));
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, lookSpeed * Time.deltaTime);
        }*/

        // When the whale has just reached the target, save the player's current position as the starting point
        if (!prevWhaleReached && whale.GetComponent<WhalePath>().hasReached())
        {
            startPoint = transform.position;
        }
        // used to be "if target < 5".
        if (target == 6 || (!atTarget() && whale.GetComponent<WhalePath>().hasReached()))
        {
            // For oculus input
            Vector2 xy = OVRInput.Get(OVRInput.RawAxis2D.LThumbstick);//SecondaryThumbstick);

            Vector3 move = Vector3.zero;
            // For PC imput.
            xy += new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
            // VRCam.forward is where the player looks at.
            move += xy.y * VRCam.transform.forward;

            // Check if the player is inside any border.
            move = GetComponent<SplineBorderVelocity>().GetVelocity(move);

            // If target > 3 (the player is moving towards the surface),
            // then let the player moving in a inclided plane.
            if (target == 6)
            {
                Vector3 dest = whale.transform.position + new Vector3((startPoint - whale.transform.position).x, 0,
                                                                       (startPoint - whale.transform.position).z).normalized * 5;
                Vector3 startToTarget = dest - startPoint;

                if (transform.position.y < -31) {
                    /*
                    Vector3 forwardOnXZ = Vector3.ProjectOnPlane(VRCam.transform.forward, new Vector3(0, 1, 0));
                    float ratio = Vector3.Dot(forwardOnXZ.normalized, VRCam.transform.forward.normalized);
                    ratio = ratio * 1 / 0.7f;
                    */
                    move = (startToTarget.normalized + new Vector3(0, 3, 0)).normalized * Mathf.Clamp01(xy.y);
                }
                else
                {
                    move = Vector3.zero;
                }
            }
            else if (target > 3)
            {
                Vector3 dest = whale.transform.position +  new Vector3((startPoint - whale.transform.position).x, 0,
                                                                       (startPoint - whale.transform.position).z).normalized * 5;
                Vector3 startToTarget = dest - startPoint;
                Vector3 right = Vector3.Cross(startToTarget, new Vector3(0, 1, 0));
                Vector3 planeNormal = Vector3.Cross(right, startToTarget).normalized;
                
                move = Vector3.ProjectOnPlane(move, planeNormal).normalized;
            }
            
            if (debug)
            {
                move = new Vector3(0, 0, 0);
                move += xy.y * VRCam.transform.forward;
            }

            // Check Collision
            if (!willCollide(move))
            {
                player.position += move * speed * Time.deltaTime;
            }


        }


        if (atTarget() && target == 6)
        {
            updateTarget();
        }
     
        

    }

    public bool atTarget() {
        if (target == 6)
        {
            return false;
        }
        Vector3 xz = new Vector3((transform.position - whale.position).x, 0, (transform.position - whale.position).z);
        return (xz.magnitude < triggerDistance) && ((transform.position - whale.position).y < 5);
    }

    public void updateTarget()
    {
        current = target;
        if (target < waypoints.Count - 1)
        {
            target++;
        }
        else if (target == waypoints.Count - 1)
        {
            //target--;
        }
    }
    /*
    // Sets the player speed based on the given ratio and transform
    public void SetPlayerSpeed(float ratio, Transform t)
    {
        Vector3 dir = Vector3.Scale(refSpeed, transform.forward).normalized;
        Vector3 localDir = t.InverseTransformDirection(dir);
        localDir.x *= ratio;        
    }
    */

    private void OnCollisionEnter(Collision collision)
    {
        TerrainCollision = collision;
    }

    private void OnCollisionExit(Collision collision)
    {
        TerrainCollision = null;
    }

    private bool willCollide(Vector3 dir)
    {
        if (TerrainCollision != null)
        {
            float cos = Vector3.Dot(dir.normalized, (TerrainCollision.GetContact(0).point - transform.position).normalized);
            return cos > 0;
        }
        return false;
        
    }


}
