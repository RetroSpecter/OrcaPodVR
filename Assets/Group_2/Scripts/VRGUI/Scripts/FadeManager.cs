using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;
namespace VRStandardAssets.Utils
{


    public class FadeManager : MonoBehaviour
    {

        public GameObject whale;
        // A bunch of UIs, will appear and disappear one after another.
        public GameObject[] UIGroups;
        // Whether the UI group needs to fade in immediately
        public bool[] isContinuous;

        // Current UI group
        private int current;

        // Start is called before the first frame update
        void Start()
        {
            foreach(SelectionSlider s in transform.GetComponentsInChildren<SelectionSlider>(true))
            {

                s.OnBarFilled += fadeOut;
            }
            GetComponent<UIFader>().OnFadeOutComplete += checkNext;
        }

        public void fadeOut()
        {
            print("********");
            whale.GetComponent<Animator>().SetBool("Start", true);
            GetComponent<UIFader>().startFadeOut(getCanvasGroup());
        }

        // Check if the next UI element needs to come in.
        public void checkNext()
        {
            current += 1;

            // if the next UI needs to fade in
            if (isContinuous[current])
            {
                print("fade in");
                GetComponent<UIFader>().startFadeIn(getCanvasGroup());
            }
        }

        public void fadeIn()
        {
            GetComponent<UIFader>().startFadeIn(getCanvasGroup());
        }

        private CanvasGroup[] getCanvasGroup()
        {
            List<CanvasGroup> children = new List<CanvasGroup>();
            foreach (Transform t in UIGroups[current].transform)
            {
                if (t.gameObject.GetComponent<CanvasGroup>() != null)
                {
                    children.Add(t.gameObject.GetComponent<CanvasGroup>());
                }
            }
            return children.ToArray();
        }
    }

}