using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class raytrace_slippers : MonoBehaviour {

    [SerializeField] private LayerMask m_IntercatibleLayers;           // Layers to exclude from the raycast.
    [SerializeField] private float m_RayLength = 500f;                  // How far into the scene the ray is cast.

    private VRInteractiveItem m_CurrentInteractible;                //The current interactive item
    private VRInteractiveItem m_LastInteractible;                   //The last interactive item                 /
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        Debug.DrawRay(transform.position, transform.forward * 50f, Color.red, 1f);
        Ray ray = new Ray(transform.position, transform.forward * m_RayLength);
        RaycastHit hit;

        if (Physics.Raycast(ray, out hit, m_RayLength, m_IntercatibleLayers.value))
        {
            VRInteractiveItem interactible = hit.collider.GetComponent<VRInteractiveItem>(); //attempt to get the VRInteractiveItem on the hit object
            m_CurrentInteractible = interactible;

            Debug.Log(hit.collider.name);
        }
    }
}
