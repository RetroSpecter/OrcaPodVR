using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlinkController : MonoBehaviour {

    [Range(0,100)]public float blinkChance;
    public float blinkSpeed;

    IEnumerator currentBlink;
    private Animator anim;

	// Use this for initialization
	void Start () {
        anim = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void LateUpdate () {
        if (currentBlink == null && blinkChance > Random.Range(0,1000)) {
            currentBlink = blinkEnum();
            StartCoroutine(currentBlink);
        }
	}

    IEnumerator blinkEnum() {
        float t = 0;
        while (t < 1) {
            t += Time.deltaTime * blinkSpeed;
            anim.SetFloat("eye", t);
            yield return null;
        }

        while (t > 0)
        {
            t -= Time.deltaTime * blinkSpeed;
            anim.SetFloat("eye", t);
            yield return null;
        }
        currentBlink = null;
    }
}
