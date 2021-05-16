# TLS

Der Service ist jetzt über DNS-Namen erreichbar, aber leider nur per HTTP. Das ist heute nicht mehr ganz zeitgemäß. 
Also brauchen wir TLS-Zertifikate. Die erstellen wir natürlich nicht per Hand, sonder automatisch.

Im K8s ist ein `cert-manager` installiert, der automatisch Zertifikate von Let's Encrypt (LE) besorgen kann.  
Es sind zwei `issuer` installiert, vergleichbar mit dem Staging von LE: `staging` und `production`.

Bitte vorerst nur `staging` verwenden und erst wenn das reibungslos funktioniert auf `production` wechseln. Hintergrund:
prod lässt nur wenige Zertifikate am Tag zu und sperrt dann. 

- Vorab installierte Issuer: `letsencrypt` (Staging) und `letsencrypt-prod` (Production)
- Die Ingress-Ressource erweitern, ein Beispiel dazu ist hier: https://cert-manager.io/docs/usage/ingress/
- Verwendet als `secretName` bitte `<username>-cert`
- Zwischen `apply` und gültigem Zertifikat können bis zu 30 Sekunden vergehen. Bis dahin bekommt ihr ein ungültiges 
Dummy-Zertifikat vom Ingress
- Wenn alles passt (d.h. der Service antwortet mit einem Zertifikat von Let's Encrypt) auf Production umstellen.
- Wieder warten. 
- Der Service sollte jetzt mit gültigem Zertifikat erreichbar sein.