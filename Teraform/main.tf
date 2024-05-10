module "network" {
  source = "./modules/network"

  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
  project_name      = var.project_name
}

resource "aws_instance" "example_instance" {
  count = 3 
  ami           = "ami-0e001c9271cf7f3b9"  
  instance_type = "t2.small"
  key_name      = "ForGrafanaProject"  

  subnet_id              = "subnet-044428798b8d7f71f" 
  vpc_security_group_ids = ["sg-0a7f52bcc161a0d22"]  


user_data = <<-EOF
    #!/bin/bash
    sudo apt update
    sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt update
    sudo apt install -y docker-ce
    sudo systemctl start docker
    sudo systemctl enable docker
  EOF

  tags = {
    Name = "MyAppInstance"
  }
}
