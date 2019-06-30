using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine.XR;

public class PlayerFreeMove : MonoBehaviour
{
    [SerializeField]
    public Transform player;
    // The numerical speed
    public float speed = 3.0f;
    public float lookSpeed = 0.5f;
    public float oceanOffset = 2;
    public PostProcessVolume post;
    public GameObject VRCam, bubbles;
    public bool debug;
    public Transform ocean;
    //public GameObject shadowMesh;

    public GameObject fogwalls;
    // The original waypoits are no longer used.
    
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
        if (device != null)
        {
            //device.TryGetFeatureValue()
        }

        
        Vignette v = ScriptableObject.CreateInstance<Vignette>();
        Vignette VignetteLayer = null;
        post.profile.TryGetSettings(out VignetteLayer);
        initialVignette = VignetteLayer.intensity.value;

    }

    // Update is called once per frame
    void Update()
    {
        // update vignette
        Vignette VignetteLayer = null;
        post.profile.TryGetSettings(out VignetteLayer);
        float amount = Mathf.Max(0, OVRInput.Get(OVRInput.RawAxis2D.LThumbstick).y);
        amount += Input.GetAxis("Vertical");
        VignetteLayer.intensity.value = Mathf.Max(VignetteLayer.intensity.value - 1f * Time.deltaTime, initialVignette);

        // For oculus input
        Vector2 xy = OVRInput.Get(OVRInput.RawAxis2D.LThumbstick);//SecondaryThumbstick);

        Vector3 move = Vector3.zero;
        // For PC imput.
        xy += new Vector2(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        // VRCam.forward is where the player looks at.
        move += xy.y * VRCam.transform.forward;

        Vector3 xz = transform.forward;
        xz.y = 0.0f;
        xz = xz.normalized;
        Vector3 diff = move.normalized - xz;

        if (transform.position.y > ocean.transform.position.y)
        {
            RenderSettings.fogDensity = 0;
            fogwalls.SetActive(false);
            bubbles.gameObject.SetActive(false);
            
            if (diff.y > 0 && transform.position.y >= ocean.transform.position.y + oceanOffset)
            {
                    move.y = 0;
            }
        } else
        {
            if (bubbles.gameObject.activeSelf != true)
            {
                bubbles.gameObject.SetActive(true);
            }

            if (RenderSettings.fogDensity != 0.05f)
            {
                RenderSettings.fogDensity = 0.05f;
            }

           if (fogwalls.gameObject.activeSelf != true)
           {
                fogwalls.SetActive(true);
           }
        }
        Mathf.Clamp(transform.position.y, -1000000000, ocean.transform.position.y + oceanOffset);

        post.profile.TryGetSettings(out VignetteLayer);
        VignetteLayer.intensity.value = initialVignette + move.magnitude / speed / 4;
        if (!willCollide(move))
        {
            player.position += move * speed * Time.deltaTime;
        }
    }

    private bool willCollide(Vector3 dir)
    {
        int layerMask = 1 << 9;
        
        RaycastHit hit;

        return (Physics.Raycast(transform.position, dir, out hit, collisionDistance, layerMask));

    }
}
