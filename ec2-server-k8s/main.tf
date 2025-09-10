module "workstation" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = "DevOps-Practice"
  ami = data.aws_ami.ami_info.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.sg_id]
  # convert StringList to list and get first element
  subnet_id = var.public_subnet_id
  user_data = file("workstation.sh")
  tags = {
        Name = "DevOps-Server"
    }
}
