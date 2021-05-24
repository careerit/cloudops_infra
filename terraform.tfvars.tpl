# Rename this file to terraform.tfvars afte substituting the values

prefix = #PREFIX#

location = "eastus"

#agent Variables

agent_inbound_ports = ["22", "8080"]
agent_vm_size       = "Standard_B2s"

#Web Variables
web_inbound_ports = ["80", "8080"]
web_vm_size       = "Standard_B1s"
web_node_count    = 2

#Database Variables
db_inbound_ports = ["3306"]
db_vm_size       = "Standard_B1s"
db_node_count    = 1

#Windows VM
win_node_count = 1
win_vm_size = "Standard_B1s"
win_inbound_ports = ["3389", "80", "443"]
password = "#VMPASSWORD#"


#common VM variables
username                 = "azadmin"
pubkeypath =   $(var.password)

destination_ssh_key_path = $()
application_port = "80"

tags = {
    
    DeployMode="Terraform"
    Environment = "#ENVIRONMENT#"
}