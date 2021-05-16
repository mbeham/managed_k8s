# Externe Verfügbarkeit mit Komfort

Bisher ist der Service nur über eine IP-Adresse oder einen automatisch von AWS generiertem Namen erreichbar. 
Schöner wäre es, wenn wir unseren eigenen Domainnamen verwenden können. 

Dafür ist ein Wildcard-DNS-Eintrag `*.managedk8s.jambit.space`eingerichtet.


- Den Service umstellen: Von `type: LoadBalancer` auf `type: ClusterIP`.  
  Ein `kubectl apply` geht hier im Normalfall schief (Zusatzfrage: Warum eigentlich?),
  nötig ist vorab ein `kubectl delete` für den Service.
  
- Wir brauchen jetzt zusätzlich zum Service eine Ingress-Resource.  
  Darin steht für K8s die Beschreibungen, wie und ob der Service exponiert werden soll.  
  Ein Beispiel dazu findet sich hier: https://kubernetes.io/docs/concepts/services-networking/ingress/#name-based-virtual-hosting  
- Hostname für die Ingress-Ressource: `<username>.manmanagedk8s.jambit.space`
- Zum Test im Browser ausprobieren.