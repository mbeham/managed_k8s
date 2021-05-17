# ConfigMaps


ConfigMaps sind bei Kubernetes die Methode um Laufzeitkonfiguration in einen Pod zu bekommen. 
Es gibt hier zwei Möglichkeiten, wie die in den Pod weitergeleitet werden. Einmal per Umgebungsvariable oder per Datei-Mount.

Die Anwendung `simpleservice` kann die Umgebungsvariable `VERSION` auslesen und auch direkt ausgeben.
- Legt eine ConfigMap an und übergebt per env eine neue Version an die Anwendung
- Alternativ sieht man die Umgebungsvariablen auf dem Endpunkt `/env`
- Die Änderung sollte per Browser zu sehen sein.

- Fügt eine zweite ConfigMap an und übergebt den Inhalt per Datei
- Die Anwendung hat einen Endpunkt unter `/secrets`, wo sie alle Dateien unter `/config` auflistet.

