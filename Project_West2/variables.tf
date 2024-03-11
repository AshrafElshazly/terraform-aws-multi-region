#Region Name
variable "region" {
  type = string
}

#Networks
variable "az" {
  type = string
}

#App EC2
variable "ami" {
  type = string
}

#App S3
variable "bucket" {
  type = string
}

#App Dynamodb
variable "key_name" {
  type = string
}

variable "dynamo_table_name" {
  type = string
}

variable "dynamo_table_key" {
  type = string
}

variable "dynamo_table_key_type" {
  type    = string
  default = "S"
}

