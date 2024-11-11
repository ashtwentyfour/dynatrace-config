resource "dynatrace_alerting" "alerting_azure_aks_dev" {
  name            = "AzureAKSDev-Alerting"
  management_zone = "AzureAKSDev"
  depends_on = [
    dynatrace_management_zone_v2.mzone_azure_aks_dev
  ]
  rules {
    rule {
      include_mode     = "INCLUDE_ALL"
      tags             = ["Environment:Dev", "Platform:AKS"]
      delay_in_minutes = 0
      severity_level   = "AVAILABILITY"
    }
    rule {
      include_mode     = "INCLUDE_ALL"
      tags             = ["Environment:Dev", "Platform:AKS"]
      delay_in_minutes = 0
      severity_level   = "CUSTOM_ALERT"
    }
    rule {
      include_mode     = "INCLUDE_ALL"
      tags             = ["Environment:Dev", "Platform:AKS"]
      delay_in_minutes = 5
      severity_level   = "ERRORS"
    }
    rule {
      include_mode     = "INCLUDE_ALL"
      tags             = ["Environment:Dev", "Platform:AKS"]
      delay_in_minutes = 5
      severity_level   = "MONITORING_UNAVAILABLE"
    }
    rule {
      include_mode     = "INCLUDE_ALL"
      tags             = ["Environment:Dev", "Platform:AKS"]
      delay_in_minutes = 10
      severity_level   = "PERFORMANCE"
    }
    rule {
      include_mode     = "INCLUDE_ALL"
      tags             = ["Environment:Dev", "Platform:AKS"]
      delay_in_minutes = 10
      severity_level   = "RESOURCE_CONTENTION"
    }
  }
}