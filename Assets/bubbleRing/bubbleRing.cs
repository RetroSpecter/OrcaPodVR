using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class bubbleRing : MonoBehaviour
{
    public ParticleSystem ringParticles;
    public ParticleSystem explodeParticles;


    public float restartTime = 3;
    IEnumerator ringOffline;

    // Start is called before the first frame update
    void Start()
    {
        explodeParticles.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        //DEBUG
        
        if (Input.GetKeyDown(KeyCode.Space)) {
            deacctivateRing();
        }
        
    }

    IEnumerator reactivateRing() {
        yield return new WaitForSeconds(restartTime);
        ringParticles.gameObject.SetActive(true);
        ringOffline = null;
    }

    //explodes the ring and sets it to respawn in a given amoutn of tiem
    public void deacctivateRing() {
        explodeRing();
        ringOffline = reactivateRing();
        StartCoroutine(ringOffline);
    }

    // returns whether or not the ring is currently active or not
    public bool ringOff() {
        return ringOffline == null;
    }

    // 
    void explodeRing() {
        explodeParticles.gameObject.SetActive(true);
        ringParticles.gameObject.SetActive(false);
    }
}
