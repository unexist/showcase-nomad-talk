job "fabio" {
  datacenters = ["dc1"]

  group "fabio" {
    count = 1

    task "fabio" {
      driver = "raw_exec"

      config {
        command = "fabio"
        args    = ["-proxy.strategy=rr"]
      }

      artifact {
        #source      = "https://github.com/fabiolb/fabio/releases/download/v1.6.1/fabio-1.6.1-darwin_amd64"
        source      = "file:///Users/christoph.kappel/Projects/showcase-nomad-jax/deployment/artifacts/consul_1.12.3_darwin_amd6"
        destination = "local/fabio"
        mode        = "file"
      }
    }
  }
}
