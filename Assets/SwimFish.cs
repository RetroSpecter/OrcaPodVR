using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwimFish : MonoBehaviour
{
    enum location { l0, l1, l2, l3, l4, l5, l6 };
    [SerializeField] GameObject salmon1;
    [SerializeField] private Transform[] loc = new Transform[7];
    bool endswim = false;
    location locE, prev;
    // Start is called before the first frame update
    void Start()
    {
        locE = location.l0;
        salmon1.transform.position = loc[(int)locE].position;
        prev = locE;
        locE++;
    }

    // Update is called once per frame
    void Update()
    {
        if (!endswim)
        {
            Vector3 dir = (loc[(int)locE].position - loc[(int)prev].position);
            Quaternion rot = Quaternion.LookRotation(dir);
            Quaternion cur = salmon1.transform.localRotation;
            salmon1.transform.rotation = Quaternion.Lerp(cur, rot, Time.deltaTime);
            salmon1.transform.position = Vector3.MoveTowards(salmon1.transform.position, loc[(int)locE].position, Time.deltaTime);
        }
        if (Vector3.Distance(salmon1.transform.position, loc[(int)locE].position) < 0.05f)
        {
            salmon1.transform.position = loc[(int)locE].position;
            if ((int)locE != 7)
                locE = locE++;
            else
                endswim = true;
        }

    }
}
