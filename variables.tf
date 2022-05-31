##############
#main
##############

variable "ssm-infra-key-value-map" {
  description = "key value map"
  type = "map"
}

variable "project" {
  description = "name of project"
  type = "string"
}

variable "ssm-path" {
  description = "path to ssm params"
  type = "string"
}

variable "env" {
  description = "project environmnet"
}

variable "region" {
  description = "name of region"
}

variable "owner" {
  description = "owner person"
}

variable "master_tags" {
  description = "common tags"
  type = "map"
}

variable "project" {
  description = "name of project"
  type = "string"
}
