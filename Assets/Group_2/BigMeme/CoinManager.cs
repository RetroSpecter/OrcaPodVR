using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinManager : MonoBehaviour
{
    [SerializeField]
    public int numberOfRedCoins;
    public GameObject star;
    public AudioClip starGet;

    public void Start()
    {
        star.SetActive(false);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<CoinPickup>() != null) {
            if (other.GetComponent<CoinPickup>().isRedCoin) {
                numberOfRedCoins--;
                if (numberOfRedCoins <= 0) {
                    openStar();
                }
            }

            other.GetComponent<CoinPickup>().Collected();

        }
    }

    public void openStar() {
        star.SetActive(true);
        audioManager.instance.Play(starGet, 0.75f);
    }
}
