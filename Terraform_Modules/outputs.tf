output "private_ip" {
  value = "${module.Instances.private_ip}"
}

output "public_ip" {
  value = "${module.Instances.public_ip}"
}