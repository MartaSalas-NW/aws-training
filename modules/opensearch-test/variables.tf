variable "cluster_version" {
  default = "1.2"
}

variable "instance_type" {
  default= "m5.large.elasticsearch"
}



variable "domain_name" {
  description = "The name of the domain of the OpenSearch Cluster"
}


variable "ebs_volume_size" {
  default = 10
}





