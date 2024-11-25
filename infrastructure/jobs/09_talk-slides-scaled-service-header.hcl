job "talk" {
  datacenters = ["dc1"]

  group "web" {
    count = 5

    task "talk" {
      driver = "java"

      config {
        jar_path = "/Users/ces/Projects/showcase-nomad-talk/target/showcase-nomad-talk-0.1-runner.jar"
        jvm_options = [
          "-Xmx256m", "-Xms256m",
          "-Dquarkus.http.port=${NOMAD_PORT_http}",
          "-Dquarkus.http.header.TalkServer.value=${NOMAD_IP_http}:${NOMAD_PORT_http}",
          "-Dquarkus.http.header.TalkSession.value=Live im Talk"
        ]
      }

      service {
        name = "talk"
        port = "http"

        tags = [
          "urlprefix-/"
        ]

        check {
          type     = "http"
          path     = "/"
          interval = "2s"
          timeout  = "2s"
        }
      }
    }

    network {
      port "http" {}
    }
  }
}