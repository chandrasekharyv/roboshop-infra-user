resource "aws_ssm_parameter" "vpc_id" {
  name  = "/rorboshop/dev/vpc_id"
  type  = "String"
  value = local.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/rorboshop/dev/public_subnet_ids"
  type  = "StringList"
  value = join(",",local.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/rorboshop/dev/private_subnet_ids"
  type  = "StringList"
  value = join(",",local.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/rorboshop/dev/database_subnet_ids"
  type  = "StringList"
  value = join(",",local.database_subnet_ids)
}

resource "aws_ssm_parameter" "allow_all_security_group_ids" {
  name  = "/rorboshop/dev/allow_all_security_group_ids"
  type  = "String"
  value = local.allow_all_security_group_ids
}
