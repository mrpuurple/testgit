variable "region" {
  default = "eu-west-1"
}

provider "aws" {
  region = "${var.region}"
}

provider "gitlab" {

}

module "kops-cluster-role" {
  source = "git::ssh://git@gitlab.com/digitaldealer/infra/terraform-modules.git//modules/kops-cluster-role-module"
  assuming-account-id = "744147648467"
}

