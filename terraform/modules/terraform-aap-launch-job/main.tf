# Add the EC2 instance as a host to the inventory
resource "aap_host" "ec2_host" {
  name         = "Application Host"
  description  = "EC2 instance ${var.ec2_instance_address}, managed by Terraform"
  inventory_id = var.inventory_id
  enabled      = true
  variables = jsonencode({
    ansible_host = var.ec2_instance_address
  })
}

resource "terraform_data" "replacement" {
  input = timestamp()
}

# Launch a job using the job template (created by playbook) and inventory (created by TF)
resource "aap_job" "run_deploy_app_playbook" {
  # The job should not run until the host has been added to the inventory
  depends_on = [aap_host.ec2_host]

  job_template_id = var.job_template_id
  inventory_id    = var.inventory_id
  extra_vars = jsonencode({
    tf_value_1 = var.tf_value_1
  })

  ## ensure ansible is triggered on every terraform apply
  triggers = {
    "environment" : "triggered-on: ${terraform_data.replacement.input}"
  }
}

output "host_id" {
  value = aap_host.ec2_host.id
}

output "aap_job_status" {
  value = aap_job.run_deploy_app_playbook.status
}

output "aap_job_url" {
  value = aap_job.run_deploy_app_playbook.url
}
