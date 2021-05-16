# Taints & Tolerations

Über Taints wird gesteuert, dass einzelne Nodes nicht im Scheduling verfügbar sind.
Die Ingress-Nodes haben beispielsweise einen entsprechenden Taint `dedicated=ingress:NoSchedule`.

- Stellt das Deployment so ein, dass es _auch_ auf den Ingress-Nodes ins Scheduling läuft. 
  Doku ist hier: https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/