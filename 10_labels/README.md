# Labels und Affinity

In Kubernetes werden Labels hauptsächlich als Selektoren verwendet. So findet ein Deployment seine Pods, ein Service weiß die Endpoints und Features des Hosts werden aufgewählt.

Hier soll das bestehende Deployment so geändert werden, dass es nur auf den on-demand ausgeführt wird.
Die on-demand-Nodes sind mit `node-lifecycle=on-demand`gelabelt.

- Deployment sollte auf 3 skaliert sein
- Ändert das bisherig Deployment ab, dass nur auf solchen Nodes gescheduled wird. 
  Die Doku dazu ist hier: https://kubernetes.io/docs/tasks/configure-pod-container/assign-pods-nodes/
- Hinweise: `nodeName` ist der falsche Parameter

Jetzt kann es passieren, dass der Scheduler beschließt, alle Pods des Deployments auf der gleichen Node zu starten. Der Selektor von gerade eben verbietet das nicht.

- Deployment sollte auf 5 skaliert sein.
- Ändert das bisherig Deployment ab, dass die Pods gleichmäßig über die AZs verteilt werden
    Die AZs sind im Label `topology.kubernetes.io/zone` hinterlegt
- Doku ist hier: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/
- Wenn die Policy nicht erfüllt werden kann, sollte der Pod nicht geschedult werden. 
- Test: 3 Pods laufen, 2 Pods nicht 