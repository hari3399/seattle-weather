variable "vm_name" {
	description = "Name of the virtual machine"
	type        = string
}

variable "vm_size" {
	description = "Size of the VM"
	type        = string
	default     = "Standard_B1ms"
}

variable "location" {
	description = "Azure region to deploy into"
	type        = string
	default     = "eastus"
}

variable "resource_group_name" {
	description = "Name of the Resource Group"
	type        = string
}

variable "admin_username" {
	description = "VM admin username"
	type        = string
	default     = "azureuser"
}

variable "vnet_name" {
	description = "Virtual network name to use or create"
	type        = string
	default     = "vnet-tf"
}

variable "subnet_name" {
	description = "Subnet name to use or create"
	type        = string
	default     = "snet-tf"
}

variable "create_network" {
	description = "If true, module will create a VNet and Subnet. If false, it will use existing ones by name in the given resource group."
	type        = bool
	default     = false
}
variable "vm_name" { type = string }
variable "vm_size" { type = string }
variable "location" { type = string }
variable "resource_group_name" { type = string }
