#####
# Commons
variable "compartment_ocid" {
  description = "Your OCID"
}

variable "region" {
  description = "Region identifier"
}

#####
# Virtual Cloud Network
variable "vcn_display_name" {
  description = "VCN display name"
}

#####
# Oracle Container Engine for Kubernetes
variable "cluster_name" {
  description = "Your cluster name"
}

variable "node_pool_instance_number" {
  description = "Node pool instance number"
}

variable "node_pool_node_shape_config_ocpus" {
  description = "Node OCPUs"
}

variable "node_pool_node_shape_config_memory_in_gbs" {
  description = "Node memory"
}
