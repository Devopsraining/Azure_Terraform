output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}
output "vm_private_ip" {
  value = azurerm_network_interface.vm_nic.private_ip_address
}
