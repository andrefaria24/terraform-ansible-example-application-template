data "aws_ami" "rhel" {
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9.3*_HVM-*x86_64*GP3"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["309956199498"] # RedHat
}

locals {
  ami_id = data.aws_ami.rhel.id
}

resource "aws_instance" "application" {
  ami                         = local.ami_id
  instance_type               = var.instance_type
  key_name                    = var.aap_machine_credential_key_pair_name
  associate_public_ip_address = true
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.security_group.id]

  tags = {
    App  = var.name_prefix
    Name = "${var.name_prefix}-application"
  }
}

resource "aws_eip" "public_ip" {
  instance = aws_instance.application.id
  domain   = "vpc"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.application.id
  allocation_id = aws_eip.public_ip.id
}
