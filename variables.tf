variable "name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "image" {
  description = "The image the virtual machine needs to be created with"
  type        = string
  default     = "rocky-8"
}

variable "size" {
  description = "The type for VM specifications"
  type        = string
}

variable "location" {
  description = "The location where the VM needs to run"
  type        = string
}

variable "ssh_keys" {
  description = "The public SSH keys to add initially"
  type        = list(string)
}

variable "enable_backup" {
  description = "Whether backup should be enabled or not"
  type        = bool
  default     = false
}

variable "network_id" {
  description = "The network ID that this VM should be attached to"
  type        = string
}

variable "ip_address" {
  description = "The IP address to be assigned to the VM"
  type        = string
}
