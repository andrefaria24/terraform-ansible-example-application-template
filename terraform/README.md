# Terraform + Ansible: Better Together -- Example Application Repository

This is an example application showing how an application can be deployed using a combination of Terraform and Ansible. This repository is in three parts:

- `app/`: Contains the example application code that will be deployed. It is a simple web application that serves static content.
- `terraform/`: Contains the Terraform configuration files that define the infrastructure required for the application. This includes the necessary AWS resources such as an EC2 instance, security groups, etc. that are needed to run the application. Terraform will then trigger Ansible Automation Platform (AAP) to process the final application deployment steps.
- `deploy-app-playbook.yml`: This is the Ansible playbook that will be called (via AAP) to configure the application host. This includes configuring the host as a web server (i.e., installing the nginx package, deploying an nginx configuration, and starting the service), as well as deploying our application code to the web server.
