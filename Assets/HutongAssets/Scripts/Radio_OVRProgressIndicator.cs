using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Radio_OVRProgressIndicator : MonoBehaviour
{
    public MeshRenderer progressImage;
    
    [Range(0, 1)]
    public float currentProgress = 0.7f;

    void Awake()
    {
        progressImage.sortingOrder = 150;
    }

  

    // Update is called once per frame
    void Update()
    {
        progressImage.sharedMaterial.SetFloat("_AlphaCutoff", 1-currentProgress);

    }
}
