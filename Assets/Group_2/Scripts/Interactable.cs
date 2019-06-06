using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactable : MonoBehaviour
{

    public void OnSelect()
    {
        Application.LoadLevel(1);
    }
}
