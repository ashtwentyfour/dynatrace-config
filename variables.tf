variable "azure_aks_dev_vmss" {
    type = string
    default = "aks-agentpool-38499208-vmss"
}

variable "azure_default_notification_email" {
    type = string
    default = "azure_sre@sre.org"
}

variable "azure_default_notification_cc_email" {
    type = string
    default = "azure_sre@sre.org"
}

variable "azure_default_notification_bcc_email" {
    type = string
    default = "azure_sre@sre.org"
}
