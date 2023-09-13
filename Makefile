# Nomad
nd-consul-start:
	consul agent -dev -log-level=INFO -log-file=deployment/nomad/logs/consul.log &

nd-vault-start:
	vault agent &

nd-nomad-start:
	nomad agent -dev -config deployment/nomad/nomad.config # -network-interface lo0

nd-start: nd-nomad-start

nd-status:
	nomad node status

nd-nomad-open:
	open http://localhost:4646

nd-consul-open:
	open http://localhost:8500

jar:
	mvn clean
	mvn quarkus:deUpdated v
	mvn package
