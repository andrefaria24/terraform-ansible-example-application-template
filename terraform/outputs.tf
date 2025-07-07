output "web_server_url" {
  description = "Access the application at this URL"
  value       = "http://${aws_eip.public_ip.public_dns}"
}

output "instance_id" {
  description = "The ID of the application instance"
  value       = aws_instance.application.id
}
