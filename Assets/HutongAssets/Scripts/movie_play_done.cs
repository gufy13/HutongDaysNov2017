using UnityEngine.Video;
using UnityEngine.SceneManagement; 
using UnityEngine;

public class movie_play_done : MonoBehaviour {

	//This is used to change scene after movie done playing 

	private VideoPlayer vidPlayer;

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
		Debug.Log ("movie done");	
		SceneManager.LoadScene(1);
	}
}
