resource "dynatrace_management_zone_v2" "mzone_azure_aks_dev" {
    name = "AzureAKSDev"
    description = "Azure Dev/Sandbox Azure Kubernetes Service (AKS) resources"
    rules {
        rule {
            type            = "ME"
            enabled         = true
            entity_selector = ""
            attribute_rule {
                entity_type = "CLOUD_APPLICATION"
                attribute_conditions {
                    condition {
                        case_sensitive = false
                        key            = "KUBERNETES_CLUSTER_NAME"
                        operator       = "BEGINS_WITH"
                        string_value   = "aks-dev"
                    }
                }
            }
        }
        rule {
            type            = "ME"
            enabled         = true
            entity_selector = ""
            attribute_rule {
                entity_type = "KUBERNETES_CLUSTER"
                attribute_conditions {
                    condition {
                        case_sensitive = false
                        key            = "KUBERNETES_CLUSTER_NAME"
                        operator       = "BEGINS_WITH"
                        string_value   = "aks-dev"
                    }
                }
            }
        }
        rule {
            type            = "ME"
            enabled         = true
            entity_selector = ""
            attribute_rule {
                entity_type = "CLOUD_APPLICATION_NAMESPACE"
                attribute_conditions {
                    condition {
                        case_sensitive = false
                        key            = "KUBERNETES_CLUSTER_NAME"
                        operator       = "BEGINS_WITH"
                        string_value   = "aks-dev"
                    }
                }
            }
        }
        rule {
            type            = "ME"
            enabled         = true
            entity_selector = ""
            attribute_rule {
                entity_type = "KUBERNETES_SERVICE"
                attribute_conditions {
                    condition {
                        case_sensitive = false
                        key            = "KUBERNETES_CLUSTER_NAME"
                        operator       = "BEGINS_WITH"
                        string_value   = "aks-dev"
                    }
                }
            }
        }
        rule {
            type            = "ME"
            enabled         = true
            entity_selector = ""
            attribute_rule {
                entity_type = "HOST"
                attribute_conditions {
                    condition {
                        case_sensitive = false
                        key            = "HOST_NAME"
                        operator       = "BEGINS_WITH"
                        string_value   = "aks"
                    }
                }
            }
        }
    }
}
