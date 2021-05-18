# Persistent Volumes


Bei Kubernetes gibt es die Möglichkeit externe Volumes als Festplatte anzubinden. Wir verwenden hier die Möglichkeit, EBS-Volumes (die HDDs von AWS) einzubinden.

- Legt ein PersistentVolumeClaim an (`pvc`), Modus `ReadWriteOnce` und wenige GB Größe
- Doku: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#persistentvolumeclaims
- Hinweis: Storageclass ist `gp2`
- Hinweis 2: Ihr braucht kein PersistentVolume und keinen Selektor
- Name des pvc sollte `<username>` enthalten

- Der pvc soll dann _einen_ Pod gebunden werden, z.B. im Deployment (Wichtig: Skalierung == 1)
- Zum Überprüfen, per Shell in den Pod wechseln und die Ausgabe von `df -h` anschauen