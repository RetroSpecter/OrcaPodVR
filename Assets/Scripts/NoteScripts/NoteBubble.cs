using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NoteBubble : Interacatble
{

    private IEnumerator transitionEnum;
    private IEnumerator delayEnum;
    public bool InteractionActive = true;

    public delegate void notePlay(NoteBubble nb);
    public notePlay playNote;

    public override void OnDeselected(CameraRaycast camera)
    {
        transitionAnimOff();

        if (delayEnum != null)
        {
            StopCoroutine(delayEnum);
        }
        delayEnum = null;
        playNote.Invoke(null);
        StartCoroutine(transitionEnum);
    }

    public override bool OnSelected(CameraRaycast camera) {

        transitionAnimOn();
        if (delayEnum != null) {
            StopCoroutine(delayEnum);
        }
        delayEnum = selectDelay(0.75f);
        StartCoroutine(delayEnum);
        StartCoroutine(transitionEnum);
        return true;
    }

    public void transitionAnimOn() {
        if (transitionEnum != null)
        {
            StopCoroutine(transitionEnum);
        }
        transitionEnum = GrowShrink(1.3f, 0.25f);
    }

    public void transitionAnimOff()
    {
        if (transitionEnum != null)
        {
            StopCoroutine(transitionEnum);
        }
        transitionEnum = GrowShrink(1f, 0.75f);
    }

    IEnumerator selectDelay(float time) {
        yield return new WaitForSeconds(time);
        while (true)
        {
            playNote.Invoke(this);
            yield return null;
        }
    }

    IEnumerator GrowShrink(float targetScale, float time) {
        float currentScale = transform.localScale.x;
        float t = 0;
        while (t < time) {
            transform.localScale = Vector3.one * Mathf.Lerp(currentScale, targetScale, t/time);
            t += Time.deltaTime;
            yield return null;
        }
        transform.localScale = Vector3.one * targetScale;
        transitionEnum = null;
    }
}