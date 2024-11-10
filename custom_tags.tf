resource "dynatrace_custom_tags" "custom_tags_service_azure_aks_dev" {
    entity_selector = "type(SERVICE),mzName(AzureAKSDev)"
    tags {
      filter {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "Dev"
      }
      filter {
        context = "CONTEXTLESS"
        key = "Platform"
        value = "AKS"
      }
    }
}

resource "dynatrace_custom_tags" "custom_tags_namespace_azure_aks_dev" {
    entity_selector = "type(CLOUD_APPLICATION_NAMESPACE),mzName(AzureAKSDev)"
    tags {
      filter {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "Dev"
      }
      filter {
        context = "CONTEXTLESS"
        key = "Platform"
        value = "AKS"
      }
    }
}

resource "dynatrace_custom_tags" "custom_tags_workload_azure_aks_dev" {
    entity_selector = "type(CLOUD_APPLICATION),mzName(AzureAKSDev)"
    tags {
      filter {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "Dev"
      }
      filter {
        context = "CONTEXTLESS"
        key = "Platform"
        value = "AKS"
      }
    }
}

resource "dynatrace_custom_tags" "custom_tags_cluster_azure_aks_dev" {
    entity_selector = "type(KUBERNETES_CLUSTER),mzName(AzureAKSDev)"
    tags {
      filter {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "Dev"
      }
      filter {
        context = "CONTEXTLESS"
        key = "Platform"
        value = "AKS"
      }
    }
}

resource "dynatrace_custom_tags" "custom_tags_host_azure_aks_dev" {
    entity_selector = "type(HOST),mzName(AzureAKSDev)"
    tags {
      filter {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "Dev"
      }
      filter {
        context = "CONTEXTLESS"
        key = "Platform"
        value = "AKS"
      }
    }
}

resource "dynatrace_custom_tags" "custom_tags_pod_azure_aks_dev" {
    entity_selector = "type(CLOUD_APPLICATION_INSTANCE),mzName(AzureAKSDev)"
    tags {
      filter {
        context = "CONTEXTLESS"
        key = "Environment"
        value = "Dev"
      }
      filter {
        context = "CONTEXTLESS"
        key = "Platform"
        value = "AKS"
      }
    }
}
