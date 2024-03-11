output "ec2_sg_id" {
  description = "The ID of the EC2 Security Group."
  value       = aws_security_group.sg.id
}
