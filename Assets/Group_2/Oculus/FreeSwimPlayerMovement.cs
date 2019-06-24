using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine.XR;

public class FreeSwimPlayerMovement : MonoBehaviour
{
    // Used to control vignette 
    public PostProcessVolume post;
    //
    public Transform VRCam;
    public Transform player;
    public float speed;

    private float initialVignette;
    private bool movementEnabled;

    private void Start()
    {
        // Save initial vignette intensity.
        Vignette v = ScriptableObject.CreateInstance<Vignette>();
        Vignette VignetteLayer = null;
        post.profile.TryGetSettings(out VignetteLayer);
        initialVignette = VignetteLayer.intensity.value;

        // Movement is enabled initially
        movementEnabled = true;
    }

    private void Update()
    {
        Vignette v = ScriptableObject.CreateInstance<Vignette>();
        Vignette vignetteLayer = null;
        post.profile.TryGetSettings(out vignetteLayer);
        vignetteLayer.intensity.value = Mathf.Max(vignetteLayer.intensity.value - 1f * Time.deltaTime, initialVignette);

        // Read input if movement is enabled
        if (movementEnabled)
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

            post.profile.TryGetSettings(out vignetteLayer);
            vignetteLayer.intensity.value = initialVignette + move.magnitude / speed / 4;

            player.position += move * speed * Time.deltaTime;
        }
    }

}
