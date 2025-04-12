# main.tf (or any .tf file in your root module)
module "ec2_instance" {
  source = "../modules/ec2"  # Path to your module
  config = var.config       # Values auto-loaded from terraform.tfvars
}