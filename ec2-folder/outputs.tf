# outputs.tf

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

output "ec2_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.my_ec2.id
}


output "debug_role_arn" {
  value = var.aws_role_arn
}