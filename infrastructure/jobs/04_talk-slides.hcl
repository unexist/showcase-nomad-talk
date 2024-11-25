job "talk" {
  datacenters = ["dc1"]

  group "web" {
    count = 1

    task "talk" {
      driver = "java"

      config {
        jar_path = "/Users/ces/Projects/showcase-nomad-talk/target/showcase-nomad-talk-0.1-runner.jar"
        jvm_options = [
          "-Xmx256m", "-Xms256m",
          "-Dquarkus.http.header.TalkSession.value=Live im Talk"
        ]
      }
    }

    network {
      port "http" {
        static = 8080
      }
    }
  }
}