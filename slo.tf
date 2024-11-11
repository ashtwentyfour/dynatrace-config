resource "dynatrace_slo_v2" "slo_availability_azure_aks_dev" {
  name               = "AzureAKSDev-Availability-SLO"
  enabled            = true
  custom_description = "Availability SLO for AKS Dev services"
  evaluation_type    = "AGGREGATE"
  evaluation_window  = "-1w"
  filter             = "type(SERVICE),mzName(AzureAKSDev)"
  metric_expression  = "(100)*(builtin:service.errors.server.successCount:splitBy())/(builtin:service.requestCount.server:splitBy())"
  metric_name        = "azure_aks_services_dev"
  target_success     = 96
  target_warning     = 98
  error_budget_burn_rate {
    burn_rate_visualization_enabled = true
    fast_burn_threshold = 10
  }
  depends_on = [
    dynatrace_management_zone_v2.mzone_azure_aks_dev
  ]
}