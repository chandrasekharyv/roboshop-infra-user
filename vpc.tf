module "vpc" {
    source = "git::https://github.com/chandrasekharyv/terraform-aws_vpc-advanced.git"
    #insetad of hard coding we are mentioning in variables.tf
    project_name = var.project_name
    cidr_block = var.cidr_block
    common_tags = var.common_tags
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr
    public_route_table_tags = var.public_route_table_tags
    private_route_table_tags = var.private_route_table_tags
    database_route_table_tags = var.database_route_table_tags
    db_subnet_group_tags = var.database_route_table_tags
    
  
}   