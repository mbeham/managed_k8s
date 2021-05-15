# Das erste Deployment

Jeden Container / Pod einzeln zu starten ist unpraktisch und wird normalerweise nicht gemacht. Dafür gibt es sog. `deployments`,
eine Sammlung von Pods und etwas Verwaltung außenrum.

- Manifest `deployment.yml` anpassen (`<username>` ersetzen)
- Manifest ausrollen: `kubectl apply -f deployment.yml`
- Liste aller laufenden Pods ansehen: `kubectl get pods`
- Wir simulieren eine abstürzende Anwendung: `kubectl delete pod app-<username>-<id>-<id> --wait=false`  
- Nochmal ein Blick in die Pod-Liste: Der Container wird jetzt automatisch neugestartet.
- In der Zeit des Neustarts wäre die Anwendung aber nicht verfügbar, weil nur eine Instanz läuft. Das ändern wir jetzt.
- In der `deployment.yml` die `replicas` auf 2 setzen und neu ausrollen. (Ein `delete` ist nicht notwendig.)
- Ergebnis prüfen
- Deployment wieder löschen
