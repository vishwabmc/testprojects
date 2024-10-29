resource "ibm_code_engine_secret" "registry_secret" {
  name       = format("%s-registry-secret", var.prefix)
  project_id = ibm_code_engine_project.code_engine_app_project.project_id
  format     = "registry"

  # registry credentials
  data = {
    server   = var.registry_name
    username = var.registry_username
    password = var.registry_password
    email    = var.registry_email
  }
}
