using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations.Rigging;

public class AutoRigging : MonoBehaviour
{

    public GameObject startBone;
    public GameObject endBone;
    [Tooltip("put all the damp components on a single child gameobject")]
    public bool setOnSingleObject;

    public void AutoRig() {
        List<GameObject> intermediateBones = new List<GameObject>();
        intermediateBones.Add(endBone);

        while (intermediateBones[intermediateBones.Count-1] != startBone
                && intermediateBones[intermediateBones.Count - 1].transform.parent != null) {
            intermediateBones.Add(intermediateBones[intermediateBones.Count - 1].transform.parent.gameObject);
        }

        if (intermediateBones[intermediateBones.Count - 1] != startBone) {
            Debug.LogError("start bone and end bone not connected");
            return;
        }

        if (this.GetComponent<Rig>() == null) {
            gameObject.AddComponent((typeof(Rig)));
        }

        if (setOnSingleObject) {
            GameObject newDamp = new GameObject("damp");
            newDamp.transform.parent = this.transform;
            for (int i = intermediateBones.Count - 1; i > 1; i--) {
                DampedTransform dampSettings = newDamp.AddComponent(typeof(DampedTransform)) as DampedTransform;
                dampSettings.data.constrainedObject = intermediateBones[i - 1].transform;
                dampSettings.data.sourceObject.transform = intermediateBones[i].transform;
            }
        } else {
            for (int i = intermediateBones.Count - 1; i > 1; i--)
            {
                GameObject newDamp = new GameObject("damp" + (i - 1));
                newDamp.transform.parent = this.transform;
                DampedTransform dampSettings = newDamp.AddComponent(typeof(DampedTransform)) as DampedTransform;
                dampSettings.data.constrainedObject = intermediateBones[i - 1].transform;
                dampSettings.data.sourceObject.transform = intermediateBones[i].transform;
            }
        }
    }
}
