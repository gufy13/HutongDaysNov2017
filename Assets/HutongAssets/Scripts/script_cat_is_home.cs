using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class script_cat_is_home : MonoBehaviour 
{
	Animator animator;

	void Start()
	{
		animator = GetComponent<Animator> (); 
	}

	void OnTriggerEnter(Collider other)
	{
		if (other.gameObject.tag  == "cat") 
		{
			Debug.Log ("cat is home");
			animator.SetTrigger("catIsHome_trigger");
			//SceneManager.LoadScene (0);	
		}
	}

}