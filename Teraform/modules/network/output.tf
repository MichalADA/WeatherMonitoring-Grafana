output "security_group_id" {
  value = aws_security_group.main_sg.id
  description = "The ID of the security group"
}