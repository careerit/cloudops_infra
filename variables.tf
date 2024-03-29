variable "prefix" {
}

// variable "virtual_machine_name" {
// }
variable "Environment" {
  default = "Test"

}
variable "location" {
}

variable "username" {
}

// variable "susbcription_id" {
// }



variable "agent_vm_size" {
  description = "Size of the db Nodes"
}


variable "application_port" {
  description  =  "Port on which App is exposed to LB"

}
variable "frontend_port" {
  description = "Front end port for Load balancer"
}


variable "win_node_count" {
  description = "Number of Windows VMs"
  default = 1
}


variable "win_inbound_ports" {
  type = list(string)
}
variable "win_vm_size" {
  description = "Size of the Windows Machine"
  default = "Standard_B1s"
}

variable "password" {
  description = "Password for Windows instance"
  default = "StraangP@55Kee"
}


variable "web_node_count" {
}

variable "web_vm_size" {
  description = "Size of the web Machine"
  default = "Standard_B1s"
}

variable "db_node_count" {
}


variable "db_vm_size" {
  description = "Size of the db Nodes"
}

variable "destination_ssh_key_path" {
  description = "Path where ssh keys are copied in the vm. Only /home/<username>/.ssh/authorize_keys is accepted."
}

variable "agent_inbound_ports" {
  type = list(string)
}

variable "web_inbound_ports" {
  type = list(string)
}

variable "pubkeypath" {
 
  description = "Path for the SSH Public key"

}
variable "db_inbound_ports" {
  type = list(string)
}

variable "tags" {
  type = map(string)

  default = {
    name = "cloudopsPipeline"
    DeployMode="Terraform"
    Environment = "Development"
  }

  description = "Any tags which should be assigned to the resources in this example"
}
