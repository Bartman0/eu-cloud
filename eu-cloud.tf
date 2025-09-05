terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 3.0.0"
    }
  }
}

provider "openstack" {
  # Configuration options
  cloud = var.cloud
  tenant_name = "OTC00000000001000143687"
  user_name   = "richard"
  password    = "ZeerOTCGeheim03!"
  auth_url    = "https://iam.eu-de.otc.t-systems.com:443/v3"
  region      = "eu-nl"
}

resource "openstack_networking_secgroup_v2" "secgroup_test" {
  name        = "secgroup_test"
  description = "a security group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_test" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.secgroup_test.id
}
