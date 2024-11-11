resource "dynatrace_email_notification" "notification_azure_aks_dev" {
  active                 = true
  name                   = "AzureAKSDev-Notifications" 
  profile                = dynatrace_alerting.alerting_azure_aks_dev.id
  subject                = "{State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [var.azure_default_notification_email]
  cc                     = [var.azure_default_notification_cc_email]
  bcc                    = [var.azure_default_notification_bcc_email]
  notify_closed_problems = true
  body                   = "{ProblemDetailsHTML}"
  depends_on = [
    dynatrace_management_zone_v2.mzone_azure_aks_dev
  ]
}
