using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinPickup : MonoBehaviour
{
    public bool isRedCoin;
    public GameObject particle;
    public AudioClip collectSFX;

    public void Collected() {
        GameObject ga = Instantiate(particle, transform.position, transform.rotation);
        Destroy(ga, 3);
        audioManager.instance.Play(collectSFX, 0.75f);
        Destroy(this.gameObject);
    }
}
