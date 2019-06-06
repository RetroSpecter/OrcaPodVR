using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockGlow : MonoBehaviour
{

    public GameObject matObject;
    private Material mat;
    public Color selectedColor;
    public Color baseColor;
    public bool active;

    IEnumerator curFadeColor;
    public float colorFadeSpeed = 0.5f;

    private void Awake()
    {
        mat = matObject.GetComponent<Renderer>().material;
        CharacterLook cl = GetComponent<CharacterLook>();

        if (cl != null)
        {
            cl.select = OnSelected;
            cl.deselect = OnDeselected;
        }
    }

    public void OnDeselected()
    {
        //if (active)
            fadeColor(baseColor);
    }

    public void OnSelected()
    {
        if(active)
            fadeColor(selectedColor);
    }

    public void setActive(bool isActive)
    {
        active = isActive;
    }

    void fadeColor(Color targetColor)
    {
        if (curFadeColor != null)
        {
            StopCoroutine(curFadeColor);
        }
        curFadeColor = fadeEnum(targetColor, colorFadeSpeed);
        StartCoroutine(curFadeColor);
    }

    IEnumerator fadeEnum(Color color, float length)
    {
        Color curColor = mat.GetColor("_EmissionColor");
        float time = 0;
        while (time < length)
        {
            time += Time.deltaTime;
            mat.SetColor("_EmissionColor", Color.Lerp(curColor, color, time / length));
            yield return null;
        }
        mat.SetColor("_EmissionColor", color);
    }
}
