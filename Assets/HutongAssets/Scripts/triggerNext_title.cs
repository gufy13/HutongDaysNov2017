using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class triggerNext_title : MonoBehaviour 
{

	void OnTriggerEnter(Collider other)
	{
		if (other.gameObject.tag  == "Player") 
		{
			Debug.Log ("yes");
			SceneManager.LoadScene (1);	
		}
	}
}