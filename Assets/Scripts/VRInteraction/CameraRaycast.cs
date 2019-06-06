using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraRaycast : MonoBehaviour
{
    public LayerMask gazeInteractive;
    public bool debug;
    [SerializeField] private Interacatble selectedObject;

    // Update is called once per frame
    void LateUpdate() {
        RaycastHit hit;

        if (Physics.Raycast(transform.position, transform.forward, out hit, Mathf.Infinity, gazeInteractive))
        {
            if (hit.transform.GetComponent<Interacatble>() != null && selectedObject != hit.transform.GetComponent<Interacatble>())
            {
                Interacatble currentSelected = hit.transform.GetComponent<Interacatble>();
                if (selectedObject != null)
                    selectedObject.OnDeselected(this);

                if(currentSelected.OnSelected(this))
                    selectedObject = currentSelected;

            }
        }
        else if (selectedObject != null)
        {
            selectedObject.OnDeselected(this);
            selectedObject = null;
        }
        Debug.DrawRay(transform.position, transform.forward * 100, (hit.transform != null) ? Color.red : Color.green);
    }
}
