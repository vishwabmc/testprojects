locals {
  # Some reusable tags that identify the resources created
  tags = ["ibmcloud", "codeengine", "code_engine_app", var.prefix]
}

# Generate a random string. This is needed because the code engine project does not get deleted immediately on destroy
resource "random_string" "lowercase" {
  length = 8   # Length of the generated string
  lower  = true  # Only include lowercase letters
  upper  = false  # Exclude uppercase letters
  number = false  # Exclude numbers
  special = false  # Exclude special characters
}

# Each code engine needs to be under a project
resource "ibm_code_engine_project" "code_engine_app_project" {
  name              = format("%s-%s-code-engine-app-project", var.prefix, random_string.lowercase.result)
  resource_group_id = data.ibm_resource_group.resource_group.id
}

# Define the Code Engine application for Nginx
resource "ibm_code_engine_app" "code_engine_app" {
  name             = format("%s-code-engine-app", var.prefix)
  project_id       = ibm_code_engine_project.code_engine_app_project.project_id
  image_reference  = var.image_name
  image_port       = var.port
  image_secret     = ibm_code_engine_secret.registry_secret.name 
}

# Get the app URL
output "code_engine_app_url" {
  value = ibm_code_engine_app.code_engine_app.endpoint
} 
