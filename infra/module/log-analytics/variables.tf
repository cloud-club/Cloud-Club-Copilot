variable "name" {
    description = "The name of the Azure Log Analytics Workspace."
    type        = string
    default = "cloudclub-workspace"
}

variable "sku" {
    description = "The SKU of the Azure Log Analytics Workspace."
    type        = string
    default     = "PerGB2018"
}