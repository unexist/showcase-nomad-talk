job "jax" {
  datacenters = ["dc1"]

  group "web" {
    count = 5

    task "jax" {
      driver = "java"

      config {
        jar_path = "/Users/christoph.kappel/Projects/showcase-nomad-jax/target/showcase-nomad-jax-0.1-runner.jar"
        jvm_options = [
          "-Xmx256m", "-Xms256m",
          "-Dquarkus.http.port=${NOMAD_PORT_http}",
          "-Dquarkus.http.header.JaxSession.value=Live im Talk"
        ]
      }
    }

    network {
      port "http" {}
    }
  }
}