########################################
# ENV
########################################

variable "env" {
    type        = string
    description = "Either: dev, uat or prod"
    default     = "dev"
}

########################################
# S3
########################################

variable "bucket_name" {
    type        = string
    description = "Name of the state bucket"
    default     = null
}

variable "force_destroy" {
    type        = string
    description = "Brute force destroy bucket that has resources"
    default     = false
}