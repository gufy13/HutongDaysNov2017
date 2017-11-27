using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class triggerNext_2Demolition : MonoBehaviour 
{
	private bool hasTriggered = false;

	public void boating2Demolation ()
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
		SceneManager.LoadSceneAsync (8);	
	}


}