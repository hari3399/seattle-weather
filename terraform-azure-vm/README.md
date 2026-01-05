Azure Linux VM (auto-creates VNet/Subnet if missing)

This module creates a single Azure Linux VM in the specified resource group. It always creates the resource group and VNet/Subnet (or uses existing ones if they already exist by name).

On first run: creates RG, VNet, and Subnet.
On subsequent runs: reuses the same RG, VNet, and Subnet for additional VMs.

Usage (GitHub Actions): the workflow passes `vm_name`, `vm_size`, `region` (mapped to `location`) and `resource_group` (mapped to `resource_group_name`). The module automatically creates the networking if needed.
