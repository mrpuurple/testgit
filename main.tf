

provider "aws" {
  region = "${var.region}"
}

provider "gitlab" {
    token = "${var.gitlab_token}"
}

module "kops-cluster-role" {
  source = "git::https://gitlab-ci-token:GITLAB_TOKEN@gitlab.com/digitaldealer/infra/terraform-modules.git?ref=v0.0.8//modules/kops-cluster-role-module"
}

