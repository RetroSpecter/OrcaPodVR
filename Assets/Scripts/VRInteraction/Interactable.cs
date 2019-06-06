using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Interacatble : MonoBehaviour
{
    public abstract bool OnSelected(CameraRaycast camera);

    public abstract void OnDeselected(CameraRaycast camera);
}
