using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IntroRock : MonoBehaviour
{
    public MusicRock mr;
    public float waitTime = 3;
    public GameObject lookAtRockText;
    // Start is called before the first frame update
    void Start()
    {
        lookAtRockText.SetActive(false);
        StartCoroutine("Hold");
    }

    IEnumerator Hold() {
        yield return new WaitForSeconds(waitTime);
        mr.ActivateRock(true);
        lookAtRockText.SetActive(true);
    }
}
