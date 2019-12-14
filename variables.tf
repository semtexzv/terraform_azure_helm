variable "location" {
  default = "eastus"
}

variable "mvp_name" {
  default = "caca"
}
variable "mvp_contact_email" {
  default = "devops-mtl@thalesdigital.io"
}

variable "mvp_budget_packet" {
  default = "10000"
}

variable "api_server_authorized_ip_ranges" {
  default = ["127.0.0.0/32"]
}
variable "node_resource_group" {
  default = "node"
}

variable "resource_group_name_dns" {
  default = "dns"
}

variable "vm_size" {
  type = map

  default = {

    default = "Standard_DS4_v2"

  }
}

variable "azure_client_id" {
  default = ""
}

variable "azure_client_secret" {
  type = string
}

variable "tenant_id" {
  default = ""
}

variable "subscription_id" {
  default = ""
}

variable "agent_count" {
  type = map

  default = {
    default      = 4
    new-customer = 2

  }
}
variable "max_count" {
  type = map
  default = {
    default      = 5
    new-customer = 2
  }
}
variable "min_count" {
  type = map
  default = {
    default      = 4
    new-customer = 2
  }
}
variable "ssh_public_key" {
  #default = "~/.ssh/id_rsa.pub"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDmIm746X6j5uWieM65ep9uhHABaZITGpcnzVmlySLDQxzyUIMjFbsR6mbeHafLi/fHprGd8Iq3Qbm3ex0XvadwTqzCESlwKMivPl4bBt6dT2wFdvgXkGPPL0YV5G7RiH/pdPa+95xUBXp+wUPr4j8dddHSbVL7sgG4VPL0mqqUhQo8hr4GLU16lwiBzKAJoPfet/alRVH0+wiYhZHmuRWW+CGWXBLcTszrGUG1dj3UBXB0nz7mmD3fsajbqZhv+uALQk3Ha1MSan8gakjbrB1zvFUlugB7IJCxsxn2gibflgYRdpHi+D7CvpaD7F9s3mUtm0NSatGAkPVnDrmFylTj"
}

variable kubernetes_version {
  default = "1.14.8"
}

variable "tiller_version" {
  type        = string
  default     = "v2.15.1"
  description = "Version of Tiller to be deployed."
}

variable "tiller_namespace" {
  type        = string
  default     = "kube-system"
  description = "Namespace to deploy Tiller into."
}

variable "helm" {
  type        = map
  description = "Helm provider parameters"
  default     = {}
}

