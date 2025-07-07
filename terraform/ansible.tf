resource "time_sleep" "wait30sforinstance" {
  depends_on      = [aws_instance.application]
  create_duration = "30s"
}

module "aap_handoff" {
  source     = "./modules/terraform-aap-launch-job"
  depends_on = [time_sleep.wait30sforinstance]

  ec2_instance_address = aws_instance.application.private_ip
  job_template_id      = var.aap_job_template_id
  inventory_id         = var.aap_inventory_id
  tf_value_1           = var.tf_value_1
}
