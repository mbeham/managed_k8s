# Jobs

Jobs sind Pods, die einmalig gestartet werden und laufen bis sie sich beenden. Nur bei einem Fehler wird neu gestaret.

- Legt einen Job an mit Container `427770260507.dkr.ecr.eu-west-1.amazonaws.com/examples:job`
  Doku: https://kubernetes.io/docs/concepts/workloads/controllers/job/
- Erweiterung: Umstellen auf CronJob, der den Job jede Minute triggert.