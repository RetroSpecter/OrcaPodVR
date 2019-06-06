using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR;

public class SnapTurning : MonoBehaviour
{
    private bool prev;
    // Start is called before the first frame update
    void Start()
    {
        prev = false;
    }

    // Update is called once per frame
    void Update()
    {
        Vector2 xy = OVRInput.Get(OVRInput.Axis2D.PrimaryThumbstick);
        //print((Mathf.Abs(xy.x) - 1) + " " + (Mathf.Abs(Mathf.Abs(xy.x) - 1) < 0.01));
        if (!(Mathf.Abs(Mathf.Abs(xy.x) - 1) < 0.1))
        {
            prev = false;
        }
        if (!prev && (Mathf.Abs(Mathf.Abs(xy.x) - 1) < 0.1))
        {
            print("snap");
            prev = true;
            transform.Rotate(new Vector3(0, 40 * Mathf.Sign(xy.x), 0), Space.World);
        }
        
    }

    IEnumerator Snap(float duration, float degree)
    {
        float t = 0;
        while (t < duration)
        {
            transform.Rotate(new Vector3(0, degree * Mathf.Min(1, Time.deltaTime / duration), 0), Space.World);
            t += Time.deltaTime;
            yield return new WaitForEndOfFrame();
        }
        yield return null;
    }
}
