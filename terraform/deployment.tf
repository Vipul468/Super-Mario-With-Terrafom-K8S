resource "kubernetes_namespace" "super_mario" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_deployment" "super_mario" {
  metadata {
    name      = "super-mario"
    namespace = kubernetes_namespace.super_mario.metadata[0].name

    labels = {
      app = "super-mario"
    }
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = "super-mario"
      }
    }

    template {
      metadata {
        labels = {
          app = "super-mario"
        }
      }

      spec {
        container {
          name  = "super-mario"
          image = "pengbai/docker-supermario"

          port {
            container_port = 8080
          }

          resources {
            requests = {
              cpu    = "100m"
              memory = "128Mi"
            }

            limits = {
              cpu    = "500m"
              memory = "256Mi"
            }
          }

          readiness_probe {
            http_get {
              path = "/"
              port = 8080
            }

            initial_delay_seconds = 10
            period_seconds        = 10
          }
        }
      }
    }
  }
}
