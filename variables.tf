variable "project_name" {
  description = "The name of the project, used for naming resources"
  type        = string
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "read_capacity" {
  description = "The read capacity for the DynamoDB table"
  type        = number
  default     = null
}

variable "write_capacity" {
  description = "The write capacity for the DynamoDB table"
  type        = number
  default     = null
}

variable "force_destroy" {
  description = "Destroy the bucket even if it contains objects"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
