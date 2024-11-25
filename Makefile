# Nomad
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
	# This step  is required to include the stuff in META-INF
	mvn quarkus:dev
	mvn package
