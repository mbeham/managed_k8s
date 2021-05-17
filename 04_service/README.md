# Services

Wir haben die Anwendung jetzt gestartet und können sie per HTTP erreichen (zumindest vom Cluster aus), aber 
ausfallsicher sind sie immer noch nicht.

- Replicas des Deployments auf 2 erhöhen, entweder über `k9s` oder `kubectl scale` \\
k9s: `:deployments`, richtige Zeile auswählen und `s`drücken
- Jetzt haben wir blöderweise für jeden Pod eine IP-Adresse, 
die wir den Nutzern unseres Webservers mitteilen (oder ins DNS eintragen) müssten... Sehr unpraktisch
- Dafür gibt es einen `service`, eine virtuelle IP vor mehreren Pods
- Selbst einrichten:  
 Anleitung https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service
  - Service bitte sinnvoll benennen (`app-<username>`)
  - Target-Port ist `8080`
- Ziel: Service soll unter `app-<username>` aus dem Console-Pod erreichbar sein. (`curl http://app-<username>`)  
  DNS-Eintrag und -auflösung funktioniert automatisch. 
- Deployment und Service _nicht_ entfernen