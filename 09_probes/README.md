# Probes

Die Lösung in K8s sind Probes. Damit kann K8s feststellen, ob ein Pod bereit ist.
Es gibt drei verschiedene Probes, wir verwenden jetzt erstmal nur `readiness`-Probes. 


- Eine Readiness-Probe zum Deployment hinzufügen. Die Anwendung braucht ca. 30 Sekunden zum Starten. 
- Die Anwendung stellt einen HTTP-Endpoint auf `/health` bereit. 
- Hinweis 1: Die `initalDelaySeconds` sollte nicht gesetzt werden müssen.
- Hinweis 2: Da es ein HTTP-Service ist, sollte auch eine HTTP-Probe verwendet werden.
- Test: Beim Wechsel zwischen `examples:simpleservice2` und `examples:simpleservice-slow` sollten keine 500-Fehler auftreten.
