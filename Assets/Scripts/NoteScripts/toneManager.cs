using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class toneManager : MonoBehaviour
{

    private GameObject cam;
    private AudioSource source;
    public float min = 0.95f;
    public float max = 1.05f;
    public float angleRange = 100;
    public float offset;
    public float projectedAngle;

    // Start is called before the first frame update
    void Start()
    {
        cam = Camera.main.gameObject;
        source = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {

        if (Input.GetKey(KeyCode.Space))
        {
            source.volume += 5 * Time.deltaTime;
            float angle = cam.transform.eulerAngles.x;
            angle = (angle > 180) ? angle - 360 : angle;
            projectedAngle = Mathf.Clamp(-angle, -angleRange / 2, angleRange / 2);
            source.pitch = Mathf.Lerp(min, max, (projectedAngle + angleRange / 2) / angleRange);
        }
        else {
            source.volume -= 1 * Time.deltaTime;
        }


    }
}
