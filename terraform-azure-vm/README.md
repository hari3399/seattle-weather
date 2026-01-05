Azure Linux VM (reuse existing VNet/Subnet)

This module creates a single Azure Linux VM. It will always create (or use) the resource group name you pass in. Networking can be handled two ways:

- Reuse existing networking (recommended): set `create_network = false` and provide `vnet_name` and `subnet_name` for a VNet/Subnet that already exist in the same resource group. The module will use data sources to find them.
- Create networking: set `create_network = true` and the module will create a VNet and Subnet named by `vnet_name` / `subnet_name`.

Usage (GitHub Actions): the workflow passes `vm_name`, `vm_size`, `region` (mapped to `location`) and `resource_group` (mapped to `resource_group_name`). Ensure `create_network` and `vnet_name`/`subnet_name` are set appropriately in `terraform.tfvars`.
