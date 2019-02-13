variable "region" {
  default = "eu-west-1"
}

provider "aws" {
  region = "${var.region}"
}

module "kops-cluster-role" {
  #source = "git::https://Handstedt:VzCn_nTg88zByhXzN1hX@gitlab.com/digitaldealer/infra/terraform-modules.git?ref=v0.0.8//modules/kops-cluster-role-module"
  source = "git::https://gitlab-ci-token:GITLAB_TOKEN@gitlab.com/digitaldealer/infra/terraform-modules.git?ref=v0.0.8//modules/kops-cluster-role-module"
  assuming-account-id = "744147648467"
}

