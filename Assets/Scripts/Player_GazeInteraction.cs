using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public class Player_GazeInteraction : MonoBehaviour {

    [SerializeField] private Transform m_Camera;
    [SerializeField] private LayerMask m_IntercatibleLayers;           // Layers to exclude from the raycast.
    [SerializeField] private float m_RayLength = 500f;                  // How far into the scene the ray is cast.
    [SerializeField] private Transform granny;
    [SerializeField] private Transform granny_endpt;

    bool haslooked = false, isRotate = false;
    public static bool callonce = false;
    private VRInteractiveItem m_CurrentInteractible;                //The current interactive item
    private VRInteractiveItem m_LastInteractible;                   //The last interactive item
    public bool m_ShowDebugRay;                   // Optionally show the debug ray.

    // Utility for other classes to get the current interactive item
    public VRInteractiveItem CurrentInteractible
    {
        get { return m_CurrentInteractible; }
    }

    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        GazeIntercation();
	}

    public void GazeIntercation()
    {
        Transform curennt = granny.transform;
        granny.transform.position = Vector3.Lerp(curennt.position, granny_endpt.position, Time.deltaTime * 0.3f);

        if (m_ShowDebugRay)
        {
            Debug.DrawRay(m_Camera.position, m_Camera.forward * 50f, Color.green, 1f);
        }
        if (isRotate && !callonce)
        {
            Vector3 relpos = m_Camera.position - granny.position;
            Quaternion rot = Quaternion.LookRotation(relpos);
            Quaternion cur = granny.localRotation;
            granny.transform.rotation = Quaternion.Lerp(cur, rot, Time.deltaTime);
            if (cur == rot)
                isRotate = false;
        }

        // Create a ray that points forwards from the camera.
        Ray ray = new Ray(m_Camera.position, m_Camera.forward * m_RayLength);
        RaycastHit hit;

        // Do the raycast forweards to see if we hit an interactive item
        if (Physics.Raycast(ray, out hit, m_RayLength, m_IntercatibleLayers.value))
        {
            VRInteractiveItem interactible = hit.collider.GetComponent<VRInteractiveItem>(); //attempt to get the VRInteractiveItem on the hit object
            m_CurrentInteractible = interactible;

            if (hit.collider.name == granny.name)
            {
                if (!haslooked)
                {
                    haslooked = true;
                    isRotate = true;
                    hit.collider.GetComponent<Granny_Behavior>().SwimOver();
                }
            }

            if (interactible && interactible != m_LastInteractible) //if the player sees a differnt object
            {
                interactible.Over();
                Debug.Log("StopFish");
            }
        }
    }
}
