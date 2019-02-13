variable "region" {
  default = "eu-west-1"
}

provider "aws" {
  region = "${var.region}"
}

provider "gitlab" {

}

module "kops-cluster-role" {
  source = "git::https://gitlab-ci-token:${GITLAB_TOKEN}@gitlab.com/digitaldealer/infra/terraform-modules.git//modules/kops-cluster-role-module"
  assuming-account-id = "744147648467"
}
