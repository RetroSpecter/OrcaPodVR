using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControllerScarlet : MonoBehaviour
{
    Vector3 deltaPos;
    public AudioSource swimSource;
    public float maxSpeed = 10;

    void Start() {
        deltaPos = transform.position;
    }

    private void LateUpdate()
    {
        Vector2 speed = transform.position - deltaPos;
        swimSource.volume = Mathf.Lerp(swimSource.volume, Mathf.Lerp(0, 0.75f, (Vector3.Magnitude(speed) * 100) / maxSpeed), Time.deltaTime * 4);
        deltaPos = transform.position;
    }
}
