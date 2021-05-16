# Helm

Alle bisherigen Deployments wurden direkt in YAML-Dateien geschrieben und ausgeführt. Das klappt solange gut, bis es komplexere Deployments mit Abhängigkeiten werden, oder ein Deployment in unterschiedlichen Versionen parallel passieren soll.

Und genau dafür wurde Helm entwickelt.

Die Aufgabe hier ist, den bisherigen Service auf Helm zu portieren. Ausgangspunkt ist dafür das Default-Template von Helm

- Mit `helm version` die Version prüfen. Mindestens Version 3.
- Mit `helm create generic` wird ein Standard-Chart erzeugt. (`generic` ist dabei nur der Name des Charts)
- Das Chart enthält eigentlich bereits alles was wir brauchen. (values.yaml sind nur die Default-Werte)
- Ausnahme: In der `deployment.yaml` ist es der falsche Port. Der Container `simpleservice` lauscht auf Port 8080
- Ausnahme 2: In der `deployment.yaml` ist noch ein anderer Fehler drin. Der würde aber erst im Betrieb auffallen.
- Doku für die Installation ist hier: https://helm.sh/docs/helm/helm_install/
- Bevor ihr das Chart ausrollt, bitte das Deployment, Service, Ingress, evtl. Console-Pod noch entfernen
