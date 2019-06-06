using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(AutoRigging))]
public class AutoRiggingEditor : Editor
{
    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        AutoRigging myScript = (AutoRigging)target;

        if (GUILayout.Button("Construct Rig")) {
            myScript.AutoRig();
        }
    }
}
