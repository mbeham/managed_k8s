# Shared Volumes


Mehrere Container in einem Pod können sich ein Volume teilen. Zum Testen gibt es dafür die Anwendung `427770260507.dkr.ecr.eu-west-1.amazonaws.com/examples:shared_volume`.
Der Code der Anwendung ist hier: https://github.com/mbeham/docker-examples/blob/main/shared_volume/script.sh


Ziel ist es zwei Container in einem Pod zu starten und über ein gemeinsames Volume Daten austauschen zu lassen.
Einer der Container ist der `reader`, der andere ist der `writer`. Zum Writer wird er durch eine Umgebungsvariable `WRITER="1"`.

Beide Container suchen unter `/xchange` nach den Daten.

