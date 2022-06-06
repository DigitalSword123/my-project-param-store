##############
#variable for main
##############

variable "ssm-infra-key-value-map" {
  description = "key value map"
  type        = map(any)
}

variable "project" {
  description = "name of project"
  type        = string
  default     = "node"
}

variable "ssm-path" {
  description = "path to ssm params"
  type        = string
  default     = "/project"
}

variable "env" {
  description = "project environmnet"
}

variable "region" {
  description = "name of region"
  default     = "ap-south-1"
}

variable "owner" {
  description = "owner person"
  default     = "ranaamiya70@gmail.com"
}

variable "master_tags" {
  description = "common tags"
  type        = map(string)
  default = {
    createdBy  = "ranaamiys70@gmail.com"
    CostCenter = "8723578"
    AlwaysOn   = "Yes"
    platforms  = "Myproject"
    product    = "employee data"
  }
}

variable "dockerhub_credentials" {
  type = string
}

variable "codestar_connector_credentials" {
  type = string
}

variable "ssm-infra-path" {
  type = string
}