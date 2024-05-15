variable "project_id" {
  description = "The ID of the project in which to create the resources"
  type        = string
}

variable "region" {
  description = "The region where the resources will be deployed"
  type        = string
  default     = "us-central1"
}

variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "image" {
  description = "The container image to deploy"
  type        = string
}

variable "container_port" {
  description = "The port on which the container listens"
  type        = number
  default     = 8080
}

variable "memory" {
  description = "The amount of memory to allocate to the container"
  type        = string
  default     = "512Mi"
}

variable "cpu" {
  description = "The amount of CPU to allocate to the container"
  type        = string
  default     = "1"
}

variable "env_var_value" {
  description = "Value of the environment variable"
  type        = string
}

variable "invoker_identity" {
  description = "The identity to be given the Cloud Run invoker role"
  type        = string
}
