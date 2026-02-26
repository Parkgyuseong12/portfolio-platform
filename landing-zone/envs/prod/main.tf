terraform {
  required_version = ">= 1.4.0"
}

locals {
  env = "prod"

  common_tags = {
    Project    = var.project
    Env        = local.env
    Owner      = var.owner
    CostCenter = var.cost_center
  }
}

module "network" {
  source = "../../modules/network"

  name = "${var.project}-${local.env}-network"
  tags = local.common_tags
}

module "iam" {
  source = "../../modules/iam"

  name = "${var.project}-${local.env}-iam"
  tags = local.common_tags
}

module "logging" {
  source = "../../modules/logging"

  name = "${var.project}-${local.env}-logging"
  tags = local.common_tags
}
