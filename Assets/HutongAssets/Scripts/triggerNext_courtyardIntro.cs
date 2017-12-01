using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class triggerNext_courtyardIntro : MonoBehaviour 
{
	
	public void jingshan2courtyardIntro ()
	{

			StartCoroutine(PlayFadeOutSwitchScene ());

	}

	IEnumerator PlayFadeOutSwitchScene()
	{
		hutongOVRScreenFade fadingObj = FindObjectOfType<hutongOVRScreenFade> ();// cameraObj.GetComponent<hutongOVRScreenFade> ();
		fadingObj.TriggerFadeOut ();
		yield return new WaitForSeconds (fadingObj.fadeTime); 
		SceneManager.LoadSceneAsync (4);	
	}

}