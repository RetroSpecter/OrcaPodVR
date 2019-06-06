using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

public class WaterSufaceManager : Singleton<WaterSufaceManager> {
    public bool isAboveWater = false;
    public bool isNearSurface = false;
    public Transform player;
    public Transform waterSurface;
    public PostProcessVolume underwaterPostprocessing;
    public PostProcessVolume abovewaterPostprocessing;
    public PostProcessVolume waterSurfacePostprocessing;

    private float threshold = 1.5f;
    private float initialWeightAbove;
    private float initialWeightUnder;

    public void Start()
    {
        initialWeightAbove = abovewaterPostprocessing.weight;
        initialWeightUnder = underwaterPostprocessing.weight;
}
    public void Update()
    {
        if (player.position.y > waterSurface.position.y) {
             isAboveWater = true;
        } else
        {
            isAboveWater = false;
        }
        SetPostProcessingWeight();
    }


    private void SetPostProcessingWeight()
    {
        float percentage = 0;
        

        percentage = 1.0f - Mathf.Clamp01((Mathf.Abs(player.position.y - waterSurface.position.y) - 0.5f) / threshold);
        waterSurfacePostprocessing.weight = Mathf.Lerp(0, 1, percentage);
        underwaterPostprocessing.weight = Mathf.Lerp(initialWeightUnder, 0, percentage);
        abovewaterPostprocessing.weight = Mathf.Lerp(initialWeightAbove, 0, percentage);
    }

}
