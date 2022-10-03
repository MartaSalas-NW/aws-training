data "aws_caller_identity" "current" {}
data "aws_region" "current" {}


module "opensearch-test" {
  source = "../../"
  domain_name = "test-domain-todelete"

}


