output "namespace" {
  value = kubernetes_namespace.super_mario.metadata[0].name
}

output "service_name" {
  value = kubernetes_service.super_mario.metadata[0].name
}

output "node_port" {
  value = var.node_port
}
