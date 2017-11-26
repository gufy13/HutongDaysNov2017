using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class HutongTeleportController : MonoBehaviour {

    //public float maxTeleportRange;
    public OVRInput.Button teleportButton;
    public KeyCode teleportKey;
	public bool teleportEnabled = true;
	public GameObject TeleportMarker;
	public Transform Player;
	public float RayLength = 20f;
	
	// Update is called once per frame
	void Update () {
		Ray ray = new Ray (transform.position, transform.forward);
		RaycastHit hit;
		if (Physics.Raycast (ray, out hit, RayLength)) {
			if (hit.collider.tag == "Ground") {
				if (!TeleportMarker.activeSelf) {
					TeleportMarker.SetActive (true);
				}
				TeleportMarker.transform.position = hit.point;
			} 
			else {
				TeleportMarker.SetActive (false);
			}
		} 
		else {
			TeleportMarker.SetActive (false);
			}
		if (OVRInput.GetUp(teleportButton) || Input.GetKeyUp(KeyCode.Space) || Input.GetMouseButtonUp(0))
		{
			if (TeleportMarker.activeSelf) {
				Vector3 markerPosition = TeleportMarker.transform.position;
				Player.position = new Vector3 (markerPosition.x, Player.position.y, 
					markerPosition.z);
			}
		}
	}
}