# Netzwerk

Bisher waren die Container noch nicht ins Netzwerk eingebunden. Das wollen wir jetzt ändern.

- `*.yml` anpassen
- `deployment.yml` ausrollen
- `console.yml` ausrollen
- `k9s` starten
- IP-Adresse des Webservers raussuchen und notieren (In k9s: `:pods<Enter>`)
- Eine Shell im `console`-Pod starten  (In k9s: Pod markieren und `s<Enter>`)
- Mit `curl` die Webseite abrufen  
    `curl http://<ip>:8080`
- Deployment _nicht_ enfernen