variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "region" {
  description = "The region where the Cloud Run service will be deployed"
  type        = string
}

variable "image" {
  description = "The container image to deploy"
  type        = string
}

variable "container_port" {
  description = "The port on which the container listens"
  type        = number
}

variable "memory" {
  description = "The amount of memory to allocate to the container"
  type        = string
}

variable "cpu" {
  description = "The amount of CPU to allocate to the container"
  type        = string
}

variable "env_var_value" {
  description = "Value of the environment variable"
  type        = string
}

variable "project_id" {
  description = "The ID of the project in which to create the service"
  type        = string
}

variable "invoker_identity" {
  description = "The identity to be given the Cloud Run invoker role"
  type        = string
}
