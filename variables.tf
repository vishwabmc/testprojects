variable "prefix" {
  type        = string
  default     = "ripple"
  description = "Prefix to be attached to name of all generated resources"
}

variable "region" {
  type        = string
  default     = "eu-gb"
  description = "Region to deploy to, e.g. eu-gb. Please consult IBM cloud document for latest information"
  validation {
    condition     = contains(["eu-gb", "br-sao",  "ca-tor", "jp-tok", "us-east"], var.region)
    error_message = "Value of region must be one of eu-gb/br-sao/ca-tor/jp-tok/us-east."
  }
}

variable "zone" {
  type        = string
  default     = "2"
  description = "Zone to deploy to, e.g. 2. Please consult IBM cloud document for latest information"
  validation {
    condition     = contains(["1", "2", "3"], var.zone)
    error_message = "Value of zone must be one of 1/2/3. Please consult IBM cloud document for latest information"
  }
}

variable "ibmcloud_api_key" {
  type       = string
  sensitive  = true
  description = <<-DESC
                  ApiKey used to login to IBM cloud to perform the operations
                  Reference: https://cloud.ibm.com/docs/account?topic=account-userapikey&interface=ui#create_user_key
                DESC
}

variable "resource_group" {
  type        = string
  description = "Resource group under which the instances will be created"
}

variable "image_name" {
  type         = string
  description  = "The name of the container image"
}

variable "port" {
  type         = number
  description  = "Port on which the app listens"
}

variable "registry_name" {
  type         = string
  default      = "https://index.docker.io/v1/"
  description  = "The name of the container image registry"
}

variable "registry_username" {
  type         = string
  description  = "The username to be used for authentication"
}

variable "registry_password" {
  type         = string
  description  = "The password to be used for authentication"
}

variable "registry_email" {
  type         = string
  description  = "The email to be used for authentication"
}
