variable "name_prefix" {
  description = "Name prefix for the resources being created by Terraform. Should be populated by parent workspace."
  type        = string
}

variable "region" {
  description = "The AWS region to use for this demo. Should be populated by parent workspace."
  type        = string
}

variable "vpc_id" {
  description = "VPC where the application instance will be launched. Should be populated by parent workspace."
  type        = string
}

variable "subnet_id" {
  description = "Subnet where the application instance will be launched. Should be populated by parent workspace."
  type        = string
}

variable "aap_controller_url" {
  description = "URL of the Ansible Automation Platform controller (e.g., https://your-aap-url). Should be populated by parent workspace."
  type        = string
}

variable "aap_controller_username" {
  description = "Username for the Ansible Automation Platform controller. Should be populated by parent workspace."
  type        = string
  default     = "admin"
}

variable "aap_controller_password" {
  description = "Password for the Ansible Automation Platform controller. Should be populated by parent workspace."
  type        = string
  sensitive   = true
}

variable "aap_job_template_id" {
  description = "The ID of the job template in AAP. Should be populated by parent workspace."
  type        = string
}

variable "aap_inventory_id" {
  description = "The ID of the inventory in AAP. Should be populated by parent workspace."
  type        = string
}

variable "aap_machine_credential_key_pair_name" {
  description = "The name of the AWS key pair used for AAP to run playbooks on hosts. Should be populated by parent workspace."
  type        = string
}

## Optional variables

variable "aap_insecure_skip_verify" {
  description = "Whether to skip SSL certificate validation for the AAP controller."
  type        = bool
  default     = true
}

variable "aap_organization_name" {
  description = "The name of the organization in AAP."
  type        = string
  default     = "Default"
}

variable "instance_type" {
  description = "Specifies the AWS instance type. If you receive an error about availability zones, try changing this value."
  type        = string
  default     = "t3.micro"
}

variable "deployment_repo_url" {
  description = "The URL of the deployment repository. Should be populated by parent workspace."
  type        = string
}

variable "tf_value_1" {
  description = "A value passed to the playbook."
  type        = string
}
