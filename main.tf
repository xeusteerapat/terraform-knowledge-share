provider "google" {
  project = var.project_id
  region  = var.region
}

module "cloudrun" {
  source = "./modules/cloudrun"

  service_name     = var.service_name
  region           = var.region
  image            = var.image
  container_port   = var.container_port
  memory           = var.memory
  cpu              = var.cpu
  env_var_value    = var.env_var_value
  project_id       = var.project_id
  invoker_identity = "allUsers"
}

