job "example" {
  datacenters = ["dc1"]

  group "cache" {
    network {
      port "db" {}
    }

    task "redis" {
      driver = "docker"

      config {
        image = "redis:3.2"

        ports = ["db"]
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
