using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class triggerNext_hutong : MonoBehaviour 
{
	private bool hasTriggered = false;
	void OnTriggerEnter(Collider other)
	{
		if (!hasTriggered && other.gameObject.tag  == "Player") 
		{
			Debug.Log ("yes, PlayFadeOutSwitchScene");
			StartCoroutine(PlayFadeOutSwitchScene ());
			hasTriggered = true;
		}
	}


	IEnumerator PlayFadeOutSwitchScene()
	{
		hutongOVRScreenFade fadingObj = FindObjectOfType<hutongOVRScreenFade> ();// cameraObj.GetComponent<hutongOVRScreenFade> ();
		fadingObj.TriggerFadeOut ();
		yield return new WaitForSeconds (fadingObj.fadeTime); 
		SceneManager.LoadSceneAsync (4);	
	}

}