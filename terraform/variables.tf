variable "namespace" {
  description = "Kubernetes namespace for Super Mario"
  type        = string
  default     = "super-mario"
}

variable "node_port" {
  description = "NodePort used to expose Super Mario"
  type        = number
  default     = 30080
}

variable "replicas" {
  description = "Number of Super Mario pod replicas"
  type        = number
  default     = 1
}
