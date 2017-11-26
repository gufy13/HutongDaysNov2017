using UnityEngine;
using System.Collections;

public class radioManTalking : MonoBehaviour 
{
	public AudioClip manSayNotWorking;
	public AudioClip manSayThanks;
	//public AudioClip radioPlayMusic;
	public AudioSource source;

	void Awake ()
	{
		source = GetComponent <AudioSource > ();
	}

	public void playNotWorking ()
	{
		source.PlayOneShot (manSayNotWorking);
	}

	public void playThanks ()
	{
		source.PlayOneShot (manSayThanks);
	}

	//public void playRadio ()
	//{
	//	source.PlayOneShot(radioPlayMusic);
	//}
}
