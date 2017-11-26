using UnityEngine;
using System.Collections;
using VRStandardAssets.Utils;

public class radioManLogic : MonoBehaviour 
{
	Animator animator;
	BoxCollider boxCollider;
	[SerializeField] public GameObject radioManUi;

	// Use this for initialization
	void Start () 
	{
		animator = GetComponent<Animator>();
		boxCollider = GetComponent<BoxCollider>();
	}
	void OnTriggerEnter(Collider other)
	{
		if (other.gameObject.tag  == "Player") 
		{
			Debug.Log ("radioMan talks");
			animator.SetTrigger ("radioIsNotWorking"); 
			boxCollider.enabled = false;
		}

	}
	public void FadeInRadioManUi ()
	{
		radioManUi.SetActive(true);

	}  
}
	//void OnTriggerStay(Collider other)
	//{
	//	if (other.gameObject.tag == "Player") {
	//		Debug.Log ("radioMan say thanks");
	//		animator.SetTrigger ("uRSoHandy"); 
	//	}
   	//}
