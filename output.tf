output "agent_ip" {
  value = azurerm_public_ip.agent.ip_address
}

#output "agent_centos_ip" {
#  value = azurerm_public_ip.cenkins.ip_address
#}


output "web_ip" {
   value = [azurerm_network_interface.web.*.private_ip_address]
}



output "db_ip" {
   value = [azurerm_network_interface.db.*.private_ip_address]
}


output "win_ip" {
   value = [azurerm_network_interface.win.*.private_ip_address]
}
