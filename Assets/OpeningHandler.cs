using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

// this is a bit lazy, but opening handler masks itself as an animator handler
// and will take queues from the starting rock in order to start the game
public class OpeningHandler : AnimatorHandler
{

    public override void ActivateTriggers(string triggerName)
    {
        StartCoroutine("loadScene");
    }

    IEnumerator loadScene() {
        yield return new WaitForSeconds(2);
        FindObjectOfType<FadeControlScarlet>().fadeOut();
        yield return new WaitForSeconds(3);
        SceneManager.LoadScene("WhaleSpaceScene");
    }
}
