module "allow_all_sg" {
  source = "../terraform-securitygroup"
  sg_name = var.sg_name
  sg_description = "Allowing all ports from internet"
  sg_ingress_rules = var.sg_ingress_rules
  vpc_id = local.vpc_id
  common_tags = var.common_tags
  sg_tags = var.sg_tags
  project_name = var.project_name
  
}

