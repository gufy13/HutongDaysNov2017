using UnityEngine;
using System.Collections;

public class talkingBirdScript : MonoBehaviour 
{
	public AudioClip birdSayMorning;
	public AudioClip birdSayAteYet;
	private AudioSource source;
	//public bool setBirdTrigger;
	void Awake ()
	{
		source = GetComponent <AudioSource > ();
	}

	public void playMorning ()
	{
		source.PlayOneShot (birdSayMorning);
	}

	public void playAteYet ()
	{
		source.PlayOneShot (birdSayAteYet);
	}


}
