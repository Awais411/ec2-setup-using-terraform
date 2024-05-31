resource "aws_instance" "docker_host" {
  ami           = "ami-09040d770ffe2224f" # Update with a valid Ubuntu 22.04 LTS AMI ID
  instance_type = "t2.micro"             # Update with the desired instance type
  security_groups = [aws_security_group.allow_ssh_docker.name]

  # User data script to install Docker on Ubuntu
  user_data = <<EOF
#!/bin/bash
apt update -y
apt install -y docker.io
systemctl start docker
systemctl enable docker
EOF

  # Add tags to the EC2 instance
  tags = {
    Name = "Terraform-Made-EC2"
    # Add another tag if needed (e.g., Environment = "Production")
  }
}

