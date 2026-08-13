output "server_public_ip" {
  value = module.my_server.public_ip
}

output "working_url" {
  value = "http://${module.my_server.public_ip}:8080"
}

output "ssm_command" {
  value = "aws ssm start-session --target ${module.my_server.id}"
}
