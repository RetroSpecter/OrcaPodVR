using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockEffectsManager : MonoBehaviour {

    public MusicRock rock;
    public Light light;
    public ParticleSystem ps;
    public ParticleSystem attentionParticles;
    public ParticleSystem fishSystem;
    public GameObject symbolMat;
    [Header("Color Settings")]
    public Color inactiveColor;
    public Color baseColor;
    public Color selectedColor;

    private AudioSource source;
    IEnumerator curFadeColor;

    [Header("ColorFadeSpeeds")]
    public float colorDeactivteFadeSpeed = 0.25f;
    public float colorActivateFadeSpeed = 0.25f;
    public float colorSelectedFadeSpeed = 0.5f;
    public float colorDeselectedFadeSpeed = 1.5f;

    [Header("Activation Angle Settings")]
    private Camera cam;
    public float visionRadius = 45;

    void Start() {
        cam = Camera.main;
        rock.select += Select;
        rock.deselect += Deselect;
        rock.active += Activate;
        rock.deactive += Deactivate;
        rock.play += PlayRock;
        ParticleSystem.EmissionModule em = attentionParticles.emission;
        em.enabled = false;
        source = GetComponent<AudioSource>();
    }

    private void OnDestroy()
    {
        rock.select -= Select;
        rock.deselect -= Deselect;
        rock.active -= Activate;
        rock.deactive -= Deactivate;
    }

    void Select() {
        light.intensity *= 2;
        Material mat = symbolMat.GetComponent<Renderer>().material;
        fadeColor(selectedColor, colorSelectedFadeSpeed, true, false);
    }

    void Deselect() {
        light.intensity /= 2;
        Material mat = symbolMat.GetComponent<Renderer>().material;
        fadeColor(baseColor, colorDeselectedFadeSpeed, true, false);
    }

    void Activate() {
        light.gameObject.SetActive(true);
        source.Play();
        Material mat = symbolMat.GetComponent<Renderer>().material;
        fadeColor(baseColor, colorActivateFadeSpeed, true, true);
    }

    void PlayRock() {
        ps.Play();
        source.Play();
        if (fishSystem != null) {
            fishSystem.GetComponent<ParticleSystem>().Play();
        }
    }

    void Deactivate() {
        light.gameObject.SetActive(false);
        Material mat = symbolMat.GetComponent<Renderer>().material;
        fadeColor(inactiveColor, colorDeselectedFadeSpeed, false, false);
    }

    void fadeColor(Color targetColor, float colorFadeSpeed, bool on, bool bubble) {
        if (curFadeColor != null) {
            StopCoroutine(curFadeColor);
        }

        if (on) {
            curFadeColor = WaitForPlayerToLook(fadeEnum(targetColor, colorFadeSpeed, on, bubble));
            StartCoroutine(curFadeColor);
        } else {
            curFadeColor = fadeEnum(targetColor, colorFadeSpeed, on, bubble);
            StartCoroutine(curFadeColor);
        }
  
    }

    IEnumerator WaitForPlayerToLook(IEnumerator fadeEnum) {
        ParticleSystem.EmissionModule em = attentionParticles.emission;
        em.enabled = true;
        Vector3 angleToCam = transform.position - cam.transform.position;
        while (Vector3.Angle(cam.transform.forward, angleToCam) > visionRadius) {
            angleToCam = transform.position - cam.transform.position;
            yield return null;
        }
        em = attentionParticles.emission;
        em.enabled = false;
        curFadeColor = fadeEnum;
        source.Play();
        StartCoroutine(fadeEnum);
    }

    IEnumerator fadeEnum(Color color, float length, bool on, bool bubble) {
        Material mat = symbolMat.GetComponent<Renderer>().material;
        Color curColor = mat.GetColor("_EmissionColor");
        float curAlpha = mat.GetFloat("_TransitionIn");
        float time = 0;

        while (time < length) {
            time += Time.deltaTime;         
            mat.SetColor("_EmissionColor", Color.Lerp(curColor, color, time/length));
            mat.SetFloat("_TransitionIn", !on ? Mathf.Lerp(curAlpha, 0, time / length) : Mathf.Lerp(curAlpha, 1, time / length));
            yield return null;
        }
        mat.SetColor("_EmissionColor", color);

        if(bubble)
            ps.Play();
    }
}
