variable "ec2_instance_address" {
  description = "The IP address or hostname of the EC2 instance to be added to the AAP inventory."
  type        = string
}

variable "job_template_id" {
  description = "ID of the job template in AAP that will be created by the Ansible playbook."
  type        = string
  default     = "Hello World Job (Playbook TF)"
}

variable "inventory_id" {
  description = "ID of the inventory in AAP."
  type        = string
}

variable "tf_value_1" {
  description = "A value passed to the playbook."
  type        = string
}
