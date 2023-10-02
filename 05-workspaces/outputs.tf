output "ips_ec2" {
  value = [for instance in aws_instance.instancias : instance.private_ip]
}