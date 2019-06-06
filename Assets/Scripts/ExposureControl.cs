using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

public class ExposureControl : MonoBehaviour {

    // PostProcessVolume ppv;
    AutoExposure autoExposure;
    public Vector2 range;
    //[Range(0,1)]public float slider;

	// Use this for initialization
	void Start () {
        PostProcessVolume ppv = GetComponent<PostProcessVolume>();
        ppv.profile.TryGetSettings(out autoExposure);
	}
	
	// Update is called once per frame
	void Update () {
            //float exposure = Mathf.Lerp(range.x, range.y, slider);
            Vector3 headPos = transform.forward;
            float angle = Mathf.Clamp(headPos.y, 0, 1);

            autoExposure.maxLuminance.value = Mathf.Lerp(range.x, range.y, angle);
    }
}
