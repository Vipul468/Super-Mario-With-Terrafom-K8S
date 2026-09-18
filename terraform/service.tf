resource "kubernetes_service" "super_mario" {
  metadata {
    name      = "super-mario"
    namespace = kubernetes_namespace.super_mario.metadata[0].name
  }

  spec {
    selector = {
      app = "super-mario"
    }

    port {
      name        = "http"
      port        = 80
      target_port = 8080
      node_port   = var.node_port
      protocol    = "TCP"
    }

    type = "NodePort"
  }
}
