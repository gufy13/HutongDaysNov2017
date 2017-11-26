using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class triggerstart_winter : MonoBehaviour 
{

	public void startWinterScene ()
	{
		StartCoroutine(PlayFadeOutSwitchScene ());
		//SceneManager.LoadScene (3);	
	}

	IEnumerator PlayFadeOutSwitchScene()
	{
		hutongOVRScreenFade fadingObj = FindObjectOfType<hutongOVRScreenFade> ();// cameraObj.GetComponent<hutongOVRScreenFade> ();
		fadingObj.TriggerFadeOut ();
		yield return new WaitForSeconds (fadingObj.fadeTime); 
		SceneManager.LoadSceneAsync (1);	
	}

}