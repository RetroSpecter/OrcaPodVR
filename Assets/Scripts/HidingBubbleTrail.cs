using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HidingBubbleTrail : MonoBehaviour {

    private ParticleSystem ps;

    private void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }

    public void PlayBubbles() {
        ps.Play();
    }
}
