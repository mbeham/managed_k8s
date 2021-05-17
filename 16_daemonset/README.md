# DaemonSet


Ein DaemonSet ist bei Kubernetes die Methode um auch allen Nodes (oder per Labels/Taints auch nur Teilen davon) ein Pod zu starten. Klassisches Beispiel wäre hier ein Log-Shipper, der auf allen Nodes die Logs einsammelt und an eine zentrale Stelle schickt.

- Erstellt ein DaemonSet mit Container `427770260507.dkr.ecr.eu-west-1.amazonaws.com/examples:logging`, dass allen Nodes (auch den Ingress-Nodes) läuft. 
- Doku ist hier https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/