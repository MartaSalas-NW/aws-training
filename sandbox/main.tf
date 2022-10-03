data "aws_caller_identity" "current" {}
data "aws_region" "current" {}


module "website" {
  source = "./modules/website"
}

module "opensearch-test" {
  source = "./modules/opensearch-test"
  domain_name = "test-domain-todelete"
}


