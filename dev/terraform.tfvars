variable "config" {
  type = object({
    aws_region                    = string
    ec2_instance_ami              = string
    create_on_public_subnet       = bool
    ec2_instance_type             = string
    root_volume_size              = string
    instance_name                 = string
    ec2_instance_key_name         = string
    enable_termination_protection = bool
    sg_name                       = string
    allowed_ports                 = list(number)
    allowed_ips                   = map(string)
    tags                          = map(any)
    vpc_id                        = string
    private_subnet                = string
    public_subnet                 = string
  })
  description = "Configuration map for EC2 instance and associated resources"
}




config = {
  aws_region                    = "us-east-1"
  ec2_instance_ami              = "ami-0c55b159cbfafe1f0" # Amazon Linux 2
  create_on_public_subnet       = true
  ec2_instance_type             = "t3.micro"
  root_volume_size              = "20"
  instance_name                 = "my-ec2-instance"
  ec2_instance_key_name         = "my-keypair"
  enable_termination_protection = false
  sg_name                       = "my-instance-sg"
  
  allowed_ports = [
    80,    # HTTP
    443,   # HTTPS
    22     # SSH
  ]
  
  allowed_ips = {
    "Office" = "203.0.113.42/32"
    "Home"   = "198.51.100.0/24"
  }
  
  tags = {
    Environment = "dev"
    Terraform   = "true"
    Project     = "web-app"
  }
  
  vpc_id         = "vpc-12345678"
  private_subnet = "subnet-12345678"
  public_subnet  = "subnet-87654321"
}