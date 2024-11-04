terraform {
    required_version = ">= 1.9.8"
    
    required_providers {
        dynatrace = {
            version = "~> 1.0"
            source = "dynatrace-oss/dynatrace"
        }
    }
} 
