variable "compartment_ocid" {
  description = "OCID of your compartment."
}

variable "region" {
  description = "Region identifier(e.g. ap-tokyo-1, us-ashburn-1, etc.)"
}

variable "vcn_id" {
  description = "OCID of VCN to which OKE is provisioned."
}

variable "lb_subnet_id" {
  description = "OCID of subnet to which Load Balancer is provisioned."
}

variable "node_pool_subnet_id" {
  description = "OCID of subnet to which Node Pool is provisioned."
}

variable "k8s_api_endpoint_subnet_id" {
  description = "OCID of subnet to which K8s API endpoint is provisioned."
}

variable "cluster_name" {
  description = "Cluster name."
}

variable "node_pool_instance_number" {
  description = "Number of instances that contained in the node pool."
}

variable "node_pool_node_shape_config_memory_in_gbs" {
  description = "Memory of instances that contained in the node pool."
}

variable "node_pool_node_shape_config_ocpus" {
  description = "OCPUs of instances that contained in the node pool."
}
