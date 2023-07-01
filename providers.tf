provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  private_key      = var.private_key
  private_key_path = var.private_key_path
  fingerprint      = var.fingerprint
}

terraform {
  required_version = ">=1.4.5"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "< 6.0.0"
    }
  }
  backend "http" {
    address       = "https://objectstorage.ap-tokyo-1.oraclecloud.com/p/pKX7tJ7vosv2MGyyfuLrnbnR77Wst20891CV0YN51nmWwzTPxxVlsv3t1_jYlxc2/n/nrnyqyfxxvzw/b/terraform-state/o/oke-cluster/terraform.tfstate"
    update_method = "PUT"
  }
}
