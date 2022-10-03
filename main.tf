resource "aws_elasticsearch_domain" "test-domain-example" {
  //domain_name           = "test-domain-example"
  domain_name = var.domain_name
  elasticsearch_version = "OpenSearch_${var.cluster_version}"

  cluster_config {
    //instance_type = "r6gd.4xlarge.elasticsearch"
    instance_type = var.instance_type
  }

  ebs_options {
    ebs_enabled = true
    volume_size = var.ebs_volume_size
  }

  tags = {
    Domain = var.domain_name
  }
}