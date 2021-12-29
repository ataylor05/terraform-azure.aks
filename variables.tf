variable "environment_tag" {
    type = string
    description = "The environment name for tagging."
}

variable "aks_subnet_name" {
    type = string
    description = "The name of the subnet to deploy AKS onto."
}

variable "aks_version" {
    type = string
    description = "The version of AKS to deploy."
}

variable "aks_vnet_name" {
    type = string
    description = "The name of the vnet to deploy AKS onto."
}

variable "aks_cluster_name" {
    type = string
    description = "The name for the AKS cluster."
}

variable "dns_prefix" {
    type = string
    description = "DNS prefix specified when creating the managed cluster."
}

variable "region" {
    type = string
    description = "The Azure region to deploy to."
}

variable "resource_group" {
    type = string
    description = "The Azure resource group the AKS cluster belongs to."
}

variable "network_resource_group" {
    type = string
    description = "The Azure resource group the AKS node pool NIC's belongs to."
}

variable "network_policy" {
    type = string
    description = "Sets up network policy to be used with Azure CNI. Currently supported values are calico and azure."
}

variable "network_plugin" {
    type = string
    description = "The cluster network plugin.  Could be azure or kubenet."
}

variable "node_admin_username" {
    type = string
    description = "The SSh username for AKS node access."
}

variable "node_admin_ssh_pub_key" {
    type = string
    description = "The public key for the SSH user."
}

variable "cluster_node_vm_size" {
    type = string
    description = "The size of the VM's being used for nodes."
}

variable "cluster_node_vm_disk_size" {
    type = number
    description = "The disk size on the AKS nodes."
}

variable "local_account_disabled" {
    type = bool
    description = "If true nodes local accounts will be disabled."
}

variable "sku_tier" {
    type = string
    description = "The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free and Paid (which includes the Uptime SLA)."
}

variable "azure_policy" {
    type = bool
    description = "Enables the Azure Policy for Kubernetes Add On."
}

variable "cluster_auto_scaling" {
    type = bool
    description = "Determines if AKS node pool Auto Scaling is enabled.."
}

variable "cluster_auto_scaling_min_nodes" {
    type = number
    description = "The minimum number of nodes of an auto scaling pool."
    default = null
}

variable "cluster_auto_scaling_max_nodes" {
    type = number
    description = "The max number of nodes auto scaling can scale up to."
    default = null
}


variable "maintenance_window_day" {
    type = string
    description = "A day in a week. Possible values are Sunday, Monday, Tuesday, Wednesday, Thursday, Friday and Saturday."
}

variable "maintenance_window_time_frame" {
    type = list
    description = "An array of hour slots in a day. Possible values are between 0 and 23."
}

variable "aad_admin_group" {
    type = list
    description = "A list of Object IDs of Azure Active Directory Groups which should have Admin Role on the Cluster."
}

variable "allowed_ips_to_api" {
    type = list
    description = "A list of public IPs in CIDR format that should be allowed to the AKS API interface"
}
