# variables.tf

# variable "region" {
#   description = "AWS region to deploy resources"
#   type        = string
#   default     = "us-east-1"
# }

# variable "aws_assume_role_arn" {
#   description = "ARN of the IAM role to assume"
#   type        = string
# }

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# variable "aws_role_arn" {
#   description = "tfc role arn"
#   type        = string
# }


