data "aws_caller_identity" "current" {}
data "aws_region" "current" {}


module "opensearch-test" {
  source = "./modules/opensearch-test"
  domain_name = "domain-to-delete"

}


