.PHONY: artifacts

nd-slidedeck:
	nomad job run jobs/codetalks-slides.nomad

nd-curl:
	curl --request POST --data @jobs/codetalks-slides.json http://localhost:4646/v1/jobs

nd-scale-up:
	nomad job scale todo-java

nd-evals:
	nomad job status -evals todo-java

nd-consul:
	nomad job run jobs/consul.nomad

nd-fabio:
	nomad job run jobs/fabio.nomad

artifacts:
	curl -sL -O https://releases.hashicorp.com/consul/1.12.3/consul_1.12.3_darwin_amd64.zip --output-dir artifacts
	curl -sL -O https://github.com/fabiolb/fabio/releases/download/v1.6.3/fabio-1.6.3-darwin_amd64 --output-dir artifacts
	chmod 777 artifacts/fabio-1.6.3-darwin_amd64

serve:
	python3 -m http.server 12345
