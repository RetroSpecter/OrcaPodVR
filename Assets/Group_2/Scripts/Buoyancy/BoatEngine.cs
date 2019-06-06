using UnityEngine;
using System.Collections;

public class BoatEngine : MonoBehaviour
{
    //Drags
    public Transform waterJetTransform;

    //How fast should the engine accelerate?
    public float powerFactor;

    //What's the boat's maximum engine power?
    public float maxPower;

    //The boat's current engine power is public for debugging
    public float currentJetPower;

    // The boat's destination
    public Transform dest;

    private float thrustFromWaterJet = 0f;

    private Rigidbody boatRB;

    private float WaterJetRotation_Y = 0f;

    BoatController boatController;

    void Start()
    {
        boatRB = GetComponent<Rigidbody>();

        boatController = GetComponent<BoatController>();
    }


    void Update()
    {
        //UserInput();
    }

    void FixedUpdate()
    {
        UpdateWaterJet();
    }

    void UserInput()
    {
        //Forward / reverse
        if (Input.GetKey(KeyCode.W))
        {
            if (boatController.CurrentSpeed < 50f && currentJetPower < maxPower)
            {
                currentJetPower += 1f * powerFactor;
            }
        }
        else
        {
            currentJetPower = 0f;
        }

        //Steer left
        if (Input.GetKey(KeyCode.A))
        {
            WaterJetRotation_Y = waterJetTransform.localEulerAngles.y + 2f;

            if (WaterJetRotation_Y > 30f && WaterJetRotation_Y < 270f)
            {
                WaterJetRotation_Y = 30f;
            }

            Vector3 newRotation = new Vector3(0f, WaterJetRotation_Y, 0f);

            waterJetTransform.localEulerAngles = newRotation;
        }
        //Steer right
        else if (Input.GetKey(KeyCode.D))
        {
            WaterJetRotation_Y = waterJetTransform.localEulerAngles.y - 2f;

            if (WaterJetRotation_Y < 330f && WaterJetRotation_Y > 90f)
            {
                WaterJetRotation_Y = 330f;
            }

            Vector3 newRotation = new Vector3(0f, WaterJetRotation_Y, 0f);

            waterJetTransform.localEulerAngles = newRotation;
        }
    }

    void UpdateWaterJet()
    {
        //Debug.Log(boatController.CurrentSpeed);
        if (dest != null )
        {
            if ((dest.position - transform.position).magnitude > 5)
            {
                Vector3 force = (dest.position - transform.position).normalized * currentJetPower;
                boatRB.AddForce(force);
            }
            return;
        }
        Vector3 forceToAdd = -waterJetTransform.forward * currentJetPower;

        //Only add the force if the engine is below sea level
        float waveYPos = WaterController.current.GetWaveYPos(waterJetTransform.position, Time.time);

        if (waterJetTransform.position.y < waveYPos || true)
        {
            boatRB.AddForceAtPosition(forceToAdd, waterJetTransform.position);
        }
        else
        {
            boatRB.AddForceAtPosition(Vector3.zero, waterJetTransform.position);
        }
    }

    public void startEngine()
    {
        StartCoroutine(startEngine(17f));
    }

    IEnumerator startEngine(float duration)
    {
        currentJetPower = 1000f;
        yield return new WaitForSeconds(duration);
        currentJetPower = 0;
        yield return null;
    }
}