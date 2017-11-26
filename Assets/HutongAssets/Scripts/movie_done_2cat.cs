using UnityEngine.Video;
using UnityEngine.SceneManagement; 
using UnityEngine;
using System.Collections;

public class movie_done_2cat : MonoBehaviour {

	//This is used to change scene after movie done playing 

	private VideoPlayer vidPlayer;
	private bool hasTriggered = false;

	// Use this for initialization
	void Start()
	{
		vidPlayer = this.GetComponent<VideoPlayer>();

		vidPlayer.isLooping = false;

		vidPlayer.loopPointReached += EndReached;
		vidPlayer.Play();
	}


	void EndReached(VideoPlayer vPlayer)
	{
		StartCoroutine(PlayFadeOutSwitchScene ());
		hasTriggered = true;
	}
		

	IEnumerator PlayFadeOutSwitchScene()
	{
		hutongOVRScreenFade fadingObj = FindObjectOfType<hutongOVRScreenFade> ();// cameraObj.GetComponent<hutongOVRScreenFade> ();
		fadingObj.TriggerFadeOut ();
		yield return new WaitForSeconds (fadingObj.fadeTime); 
		SceneManager.LoadSceneAsync (7);	
	}


}