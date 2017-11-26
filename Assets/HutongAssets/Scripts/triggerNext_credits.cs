using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class triggerNext_credits : MonoBehaviour 
{
	private bool hasTriggered = false;

	public void rollCredit ()
	{
		StartCoroutine(PlayFadeOutSwitchScene ());
		hasTriggered = true;
		//SceneManager.LoadScene (3);	
	}

	IEnumerator PlayFadeOutSwitchScene()
	{
		hutongOVRScreenFade fadingObj = FindObjectOfType<hutongOVRScreenFade> ();// cameraObj.GetComponent<hutongOVRScreenFade> ();
		fadingObj.TriggerFadeOut ();
		yield return new WaitForSeconds (fadingObj.fadeTime); 
		SceneManager.LoadSceneAsync (9);	
	}
}