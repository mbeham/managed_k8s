# Externe Verfügbarkeit

Bisher können wir den Service nur intern erreichen.
Jetzt soll er auch extern per Internet erreichbar sein.

Der von AWS direkt unterstützte Weg ist der `type: LoadBalancer`. Das bedeutet, dass der 
K8s-interne Service eine extern erreichbare IP-Adresse bekommt.

- Den K8s-Service extern verfügbar machen.   
    Dokumentation: https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types
    Referenz für die Service-Definition: https://v1-19.docs.kubernetes.io/docs/reference/generated/kubernetes-api/v1.19/#service-v1-core

- Wenn der Service eine Adresse wird sie in K9s unter `:services` als `External IP` angezeigt.   
    Die Verfügbarkeit kann aber kurz dauern (< 1m). Selbst wenn die Adresse angezeigt wird, dauert es nochmal kurz bis der Service erreichbar ist.
