using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameEndingManagement : MonoBehaviour {

	public GameObject CanvasObj;

	float canvasStartY = -240;
	float canvasEndY = 180;
	[SerializeField] public GameObject gameExitbutton;

	// Use this for initialization
	void Start () {
	
		CanvasObj.GetComponent<RectTransform> ().position = new Vector3 (CanvasObj.GetComponent<RectTransform> ().position.x, canvasStartY, CanvasObj.GetComponent<RectTransform> ().position.z);
		StartCoroutine (CreditRolling ());
	}

	IEnumerator CreditRolling()
	{
		float speed = 15;
		RectTransform canvasTransform = CanvasObj.GetComponent<RectTransform> ();
		float elapseTime = 0;
		float rollingTime = 20;

		Vector3 canvasPos = canvasTransform.position;
		for (float animProgress = 0; animProgress < 1; animProgress += 0.001f)
		{
			yield return new WaitForSeconds (rollingTime / 1000.0f);
			canvasPos = new Vector3( canvasPos.x, Mathf.Lerp (canvasStartY, canvasEndY, animProgress), canvasPos.z);
			canvasTransform.position = canvasPos;
		}

		gameExitbutton.SetActive(true);
	
	}


	public void GameQuite()
	{
		Application.Quit ();
	}

}
