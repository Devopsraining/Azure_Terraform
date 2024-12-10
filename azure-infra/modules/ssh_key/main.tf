resource "tls_private_key" "vm_ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

output "public_key_openssh" {
  value = tls_private_key.vm_ssh_key.public_key_openssh
}

output "private_key_pem" {
  value = tls_private_key.vm_ssh_key.private_key_pem
}
