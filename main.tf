terraform {
  required_version = ">=0.14.5"

  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = ">=1.0.18"
    }
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

#   resource "intersight_ntp_policy" "ntp1" {
#   name        = "ntp1-tfc"
#   description = "test policy"
#   enabled     = true
#   ntp_servers = [
#     "ntp.esl.cisco.com",
#     "time-a-g.nist.gov",
#     "time-b-g.nist.gov"
#   ]
#   organization {
#     object_type = "organization.Organization"
#     moid        = data.intersight_organization_organization.organization_moid.id
#   }
# }
