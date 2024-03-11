variable "dynamo_table_name" {
  type        = string
  description = "The name of the DynamoDB table."
}

variable "dynamo_table_key" {
  type        = string
  description = "The primary key for the DynamoDB table."
}

variable "dynamo_table_key_type" {
  type        = string
  description = "The data type of the primary key for the DynamoDB table."
  default     = "S"
  validation {
    condition     = var.dynamo_table_key_type != "" && can(regex("S|N|B", var.dynamo_table_key_type))
    error_message = "Invalid dynamo_table_key_type value. It must be 'S', 'N', or 'B'."
  }
}
