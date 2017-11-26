using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class hutongCamFadeBall : MonoBehaviour {
	Animator m_amitor;
	// Use this for initialization
	void Start () 
	{
		m_amitor = GetComponent<Animator>();	
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnLevelFinishedLoading(int level)
	{
		m_amitor.SetTrigger ("cameraFadeIn");	
	}
}
