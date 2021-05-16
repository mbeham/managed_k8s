# Updates

Die Entwickler haben sich fleißig hingesetzt und eine neue Version der Anwendung entwickelt. Jetzt wollen wir diese
Version unterbrechungsfrei ausrollen. `kubectl destroy` fällt also deswegen aus. 

K8s bietet `rolling updates`, wir können also alle Pods einer Anwendung durch neue Versionen ersetzen. Dabei wird ein
neuer Pod gestartet, in den Service aufgenommen und ein alter Pod entfernt. Das ganze so lange, bis nur noch die neue
Version läuft.

- Die Anwendung aus der letzten Aufgabe sollte noch laufen (Deployment, Service, Ingress)
- Das Kommando lautet: `kubectl set image deployments/app-<username> simpleservice=427770260507.dkr.ecr.eu-west-1.amazonaws.com/examples:simpleservice2`
- Ihr könnt dem Ganzen im Browser zuschauen oder auf der Konsole mit `watch -n 0.1 curl --no-progress-meter https://<username>.managedk8s.jambit.space/`
- Ihr könnt auch im K9s zuschauen was passiert, da wird die Reihenfolge noch mal deutlich.

- Jetzt gab es nochmal ein Update: `examples:simpleservice-slow`. Bitte genauso ausrollen.
- In die Anwendung wurde ein fancy Framework mit viel Magie auf Basis der JVM eingebaut. Leider 
braucht die Anwendung jetzt deutlich länger zum Starten.

- Wieder im Browser/Konsole zuschauen. Warum genau geht das jetzt schief?

- Scheinbar war das Update kaputt. Wird müssen wieder zurück auf eine stabile Version. Dafür gibt es `kubectl rollout undo deployment/app-<username>`. 