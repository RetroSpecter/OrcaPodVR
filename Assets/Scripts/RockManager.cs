using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockManager : MonoBehaviour {

    public static RockManager instance;
    public MusicRock[] rocks;

    private void Start()
    {
        instance = this;
        foreach (MusicRock r in rocks)
            r.ActivateRock(false);
    }

    public void ActivateRock(int i) {
        if (i == 0) {
            for (int j = 0; j < rocks.Length; j++)
            {
                rocks[j].ActivateRock(false);
            }

            return;
        }

        StartCoroutine(ActivateRockEnum(i));
    }

    IEnumerator ActivateRockEnum(int i) {
        for (int j = 0; j < rocks.Length; j++)
        {
            yield return new WaitForSeconds(0.5f);
            if (j == i - 1)
                rocks[j].ActivateRock(true);
            else
                rocks[j].ActivateRock(false);
        }
    }
}
