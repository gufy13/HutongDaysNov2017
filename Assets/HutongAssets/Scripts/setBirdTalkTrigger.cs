using UnityEngine;
using System.Collections;

public class setBirdTalkTrigger : MonoBehaviour {
	Animator animator;

	void Start ()
	{
		animator = GetComponent<Animator>();
	}
	void OnTriggerEnter(Collider other)
	{
		if (other.gameObject.tag  == "Player") 
		{
			Debug.Log ("bird talks");
			animator.SetTrigger ("birdTalkTrigger"); 

		}
	}
	void OnTriggerStay(Collider other)
	{
		if (other.gameObject.tag  == "Player") 
		{
			Debug.Log ("bird talks");
			animator.SetTrigger ("birdTalkTrigger"); 

		}
	}

}
