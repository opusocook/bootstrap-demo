output "private_ip" {
  value = "${module.Instances.private_ip}"
  sensitive = true
}

output "public_ip" {
  value = "${module.Instances.public_ip}"
  sensitive = true
}