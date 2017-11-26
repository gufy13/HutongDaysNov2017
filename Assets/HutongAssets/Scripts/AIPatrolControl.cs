using System;
using UnityEngine;
using System.Collections;

namespace UnityStandardAssets.Characters.ThirdPerson
{
    [RequireComponent(typeof (UnityEngine.AI.NavMeshAgent))]
    [RequireComponent(typeof (ThirdPersonCharacter))]
    public class AIPatrolControl : MonoBehaviour
    {
		public Transform [] points;
		private int destPoint = 0;
		public UnityEngine.AI.NavMeshAgent agent { get; private set; }             // the navmesh agent required for the path finding
        public ThirdPersonCharacter character { get; private set; } // the character we are controlling
        //public Transform target;                                    // target to aim for


        private void Start()
        {
            // get the components on the object we need ( should not be null due to require component so no need to check )
            agent = GetComponentInChildren<UnityEngine.AI.NavMeshAgent>();
            character = GetComponent<ThirdPersonCharacter>();

	        agent.updateRotation = true;
	        agent.updatePosition = true;

			GotoNextPoint ();
        }

		void GotoNextPoint() 
		{
			// Returns if no points have been set up
			if (points.Length == 0)
				return;

			// Set the agent to go to the currently selected destination.
			agent.destination = points[destPoint].position;

			// Choose the next point in the array as the destination,
			// cycling to the start if necessary.
			destPoint = (destPoint + 1) % points.Length;
		}

        private void Update()
		{
		if (agent.remainingDistance < 0.5f)
			GotoNextPoint();
			character.Move(agent.desiredVelocity, false, false);
		}

       // public void SetTarget(Transform target)
        //{
        //    this.target = target;
       // }
    }
}


