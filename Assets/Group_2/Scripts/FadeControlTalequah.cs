using System.Collections;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine.SceneManagement;

public class FadeControlTalequah: MonoBehaviour
{

    public MeshRenderer meshRenderer;
    private Material mat;

    [Range(0,1)] public float slider;
    public Vector2 minMax;

    public float fadeInSpeed;
    public float fadeOutSpeed;

    // Use this for initialization
    void Start()
    {
    
        PostProcessVolume ppv = GetComponent<PostProcessVolume>();

        fadeIn();

    }

    public void fadeIn() {
        StartCoroutine(fadeInOutEnum(true, fadeInSpeed));
    }

    public void fadeOut()
    {
        StartCoroutine(fadeInOutEnum(false, fadeOutSpeed));
    }

    IEnumerator fadeInOutEnum(bool fadeIn, float speed) {
        if (fadeIn) {
            slider = 1;
            while (slider > 0) {
                slider -= Time.deltaTime * speed;
                Color col = Color.Lerp(Color.clear, Color.white, slider);
                mat.SetColor("_Color", col);
                yield return null;
            }
        } else {
            slider = 0;
            while (slider < 1) {
                slider += Time.deltaTime * speed;
                Color col = Color.Lerp(Color.clear, Color.white, slider);
                mat.SetColor("_Color", col);
                
            }
            SceneManager.LoadScene("BeginScene");
            yield return null;
        }
        
    }
}

