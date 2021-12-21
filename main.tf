terraform {
  required_version = ">=0.14.5"

  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">=1.0.18"
    }
  }

provider "intersight" {
  apikey    = var.apikey
  secretkey = var.secretkey
  endpoint  = var.endpoint
}
  
data "intersight_organization_organization" "organization_moid" {
name = "default"
}

output "PodX_organization_moid" {
description = "organization id "
value = data.intersight_organization_organization.organization_moid.id
}
