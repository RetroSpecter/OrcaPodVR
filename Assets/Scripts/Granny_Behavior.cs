using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public enum FishState { CAUGHT, FLOATING, LOST, EATEN };
public class Granny_Behavior : MonoBehaviour
{

    // Use this for initialization
    public static FishState fish_st = FishState.CAUGHT;
    public Transform Camera;
    public GameObject salmon, salmon_2, salmon_3, round_fish, will_fish, fishbones,fishbones_player, pod, grannydouble, s1,s2; //s1,s1 salmonswim
    public Transform  fishpos, playrfishpos;
    public ParticleSystem shuffleParticleLauncher, fish_particle, burst;

    public ParticleSystem grannyBreath;
    public ParticleSystem fireworks;

    public Transform salmonLoc1, salmonLoc2;
    public AudioSource grannyHunt;
    public AudioSource grannyCallUser;
    public AudioSource grannyBubbleSound;
    public AudioSource celebration;
    public AudioSource chewing;

    int fishcount;
    Animator aniamtor;
    readonly int gofishHash = Animator.StringToHash("fish_trigger");
    readonly int wave = Animator.StringToHash("sayHi_trigger");
    readonly int clap_t = Animator.StringToHash("clap_trigger");
    readonly int moveme = Animator.StringToHash("moveme");
    readonly int correct_fish = Animator.StringToHash("correct");
    readonly int allDone = Animator.StringToHash("allDone");
    float interim_time;
    bool isforward = false, isplayer = false;
    void Start()
    {
        aniamtor = GetComponent<Animator>();
        shuffleParticleLauncher.Stop();
        interim_time = 4f;
        grannyHunt.Stop();
        grannyBreath.Stop();
        grannyCallUser.Stop();
        grannyBubbleSound.Stop();
        fireworks.Stop();
        burst.Stop();
    }

    // Update is called once per frame
    void Update()
    {
        if (isforward)
        {
            transform.position = Vector3.Lerp(transform.position, Camera.position, Time.deltaTime * 0.25f);
            if (Vector3.Distance(transform.position, Camera.position) < 6.0f )
            {
                Debug.Log(Vector3.Distance(transform.position, Camera.position));
                isforward = false;
            }
        }
    }

    public Vector3 getfishpos()
    {
        return fishpos.position;
    }

    public void Clap2()
    {
        salmon_2.SetActive(false);
        fish_st = FishState.EATEN;
        isplayer = true;
        fishbones_burp();
        aniamtor.SetTrigger(clap_t);
    }

    public void Clap3(int fish)
    {
        if (fish == 1)
        {
            salmon_3.SetActive(false);
            fishcount++;
        }
        if (fish == 2)
        {
            round_fish.SetActive(false);
            fishcount++;
        }
        if (fish == 3)
        {
            will_fish.SetActive(false);
            fishcount++;
        }
        fish_st = FishState.EATEN;
        fishbones_burp();
        aniamtor.SetTrigger(correct_fish);
        if (fishcount >= 3)
            aniamtor.SetTrigger(allDone);
    }

    IEnumerator GoFish()
    {
        yield return new WaitForSeconds(0.35f);
        aniamtor.SetTrigger(gofishHash);
        grannyHunt.Play();
        fish_st = FishState.CAUGHT;
    }

    public void showsalmon()
    {
        s1.SetActive(true);
        s2.SetActive(true);
    }

    public void hidesalmon(int i)
    {
        if (i == 1)
            s1.SetActive(false);
        else if (i == 2)
            s2.SetActive(false);
    }
    IEnumerator Wave()
    {
        yield return new WaitForSeconds(1.5f);
        aniamtor.SetTrigger(wave);
        grannyCallUser.Play();
        StartCoroutine("GoFish");
    }

    IEnumerator Burp()
    {
        yield return new WaitForSeconds(1.5f);
        fishbones_player.GetComponent<Fishbones_behaviour>().Slideout();
        chewing.Play();
    }

    public void SwimOver()
    {
        isforward = true;
        Debug.Log("forward");
        grannyBreath.Play();
        grannyBubbleSound.Play();
        StartCoroutine("Wave");
    }

    public void disappearFish()
    {
        will_fish.GetComponent<Fish_Gameobject_Behaviour>().scalechange();
        will_fish.gameObject.SetActive(false);
    }

    public void playheart()
    {
        //heart.SetActive(true);
        //gameObject.SetActive(false);
    }

    public void playpod()
    {
        pod.SetActive(true);
        grannydouble.transform.position = gameObject.transform.position;
        grannydouble.transform.rotation = gameObject.transform.rotation;
        gameObject.SetActive(false);
        grannydouble.SetActive(true);
        //fish_particle.Stop();
       // fish_particle.gameObject.SetActive(false);
    }
    /****************
        PARTICLES
     *****************/

    public void EatenAndCelebration()
    {
        celebration.Play();
        fireworks.Play();
    }

    public void playparticles()
    {
        shuffleParticleLauncher.gameObject.SetActive(true);
        shuffleParticleLauncher.Play();
    }

    /**********************
         FISH SCRIPTING
    ************************/

    public void showSalmon()
    {
        salmon.GetComponent<Fish_Gameobject_Behaviour>().show();
        salmon_2.GetComponent<Fish_Gameobject_Behaviour>().show();
    }

    public void showSalmon3()
    {
        salmon_3.SetActive(true);
    }

    public void fishbones_burp()
    {
        if (!isplayer)
        {
            fishbones.GetComponent<Fishbones_behaviour>().Slideout();
            chewing.Play();
        }
        else
            StartCoroutine("Burp");
    }

    public void fishbones_gone()
    {
        fishbones.SetActive(false);
    }

    public void showRound()
    {
        round_fish.SetActive(true);
    }

    public void showWill()
    {
        will_fish.SetActive(true);
    }

    public void dropfish(int fishnum)
    {
        switch (fishnum)
        {
            case 1:
                salmon.GetComponent<Fish_Gameobject_Behaviour>().unbend();
                break;
            case 2:
                salmon_2.GetComponent<Fish_Gameobject_Behaviour>().unbend();
                break;
            case 3:
                salmon_3.GetComponent<Fish_Gameobject_Behaviour>().unbend();
                break;
            case 4: //round
                round_fish.GetComponent<Fish_Gameobject_Behaviour>().unbend();
                break;
            case 5: //will
                will_fish.GetComponent<Fish_Gameobject_Behaviour>().unbend();
                break;
        }
    }

    public void hideSalmon()
    {
        salmon.SetActive(false);
    }

    public void pushfish(int fishnum)
    {
        switch (fishnum)
        {
            case 2:
                salmon_2.GetComponent<Fish_Gameobject_Behaviour>().moveforward();
                break;
            case 3:
                salmon_3.GetComponent<Fish_Gameobject_Behaviour>().moveforward();
                break;
            case 4:
                round_fish.GetComponent<Fish_Gameobject_Behaviour>().moveforward();
                break;
            case 5:
                will_fish.GetComponent<Fish_Gameobject_Behaviour>().moveforward();
                break;
        }

    }
}
