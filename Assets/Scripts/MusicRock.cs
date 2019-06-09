using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MusicRock : Interacatble {

    public float lookTimer;
    public string triggerName;
    public string soundName;
    protected IEnumerator currentTimer;

    public bool isActive;

    public delegate void selectionEvent();
    public selectionEvent select;
    public selectionEvent deselect;
    public selectionEvent active;
    public selectionEvent deactive;
    public selectionEvent play;

    public RockGlow rg;
    public GameObject optionalText;

    public void ActivateRock(bool active) {
        if (active && this.active != null)
        {
            if (optionalText != null) {
                optionalText.SetActive(true);
            }
            this.active();
        } else if (!active && this.deactive != null) {
            if (optionalText != null)
            {
                optionalText.SetActive(false);
            }
            rg.OnDeselected();
            this.deactive();
            StopAllCoroutines();
            currentTimer = null;
        }

        isActive = active;
    }

    public override void OnDeselected(CameraRaycast camera)
    {
        if (!isActive) return;

        if (deselect != null)
            deselect();

        if (currentTimer != null)
            StopCoroutine(currentTimer);
        rg.OnDeselected();
        currentTimer = null;
    }

    public override bool OnSelected(CameraRaycast camera)
    {
        return false;
        if (!isActive) return false;

        if (select != null)
            select();

        if (currentTimer == null) {
            currentTimer = timeToLook(lookTimer);
            StartCoroutine(currentTimer);
        }
        rg.OnSelected();
        return true;
    }

    public void PlayRock() {
        if (!triggerName.Equals("") && AnimatorHandler.instance != null) {
            AnimatorHandler.instance.ActivateTriggers(triggerName);
        }

        if (!soundName.Equals("")) {
            AudioManager.instance.Play(soundName);
        }

        if (play != null)
            play();
    }

    protected IEnumerator timeToLook(float delay) {   
        float t = 0;
        while (t < delay) {
            t += Time.deltaTime;
            yield return null;
        }

        PlayRock();
    }
}
