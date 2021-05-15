# Der erste Container

- Anmelden bei AWS `aws-azure-login --profile jambit`
- Profil setzen `export AWS_PROFILE=jambit-hr`
- Abholen der Credentials für K8s `aws eks update-kubeconfig --name mbeham`

- Manifest `pod.yml` anpassen (`<username>` ersetzen)
- Manifest ausrollen / installieren: `kubectl apply -f pod.yml`
- Liste aller laufenden Pods ansehen: `kubectl get pods`

# Logging

Nach den 12Factor-Regeln loggen die Container auf `stdout`.

- Abfragen mittels `kubectl logs helloworld-<username>`
- Mögliche Filter:
  - `--tail=5`: Nur die letzen 5 Zeilen
  - `--since=10s`: Nur die letzten 10 Sekunden
  - `-f`: Follow, neue Logs auch anzeigen

# Aufräumen
- Manifest entfernen: `kubectl delete -f pod.yml`
