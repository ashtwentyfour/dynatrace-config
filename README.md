## Dynatrace Configuration(s) with Terraform

### References

- https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs
- https://docs.dynatrace.com/docs

### Setup

- Create Dynatrace access token and set environment variables - ```DYNATRACE_ENV_URL``` and ```DYNATRACE_API_TOKEN``` - https://registry.terraform.io/providers/dynatrace-oss/dynatrace/latest/docs#configure-the-dynatrace-provider

- Execute ```terraform``` plan and apply changes

```
$ terraform plan

$ terraform apply
```

- Deploy a new service to validate:

```
$ kubectl create ns pets

$ kubectl apply -f https://raw.githubusercontent.com/ashtwentyfour/spring-petclinic/refs/heads/main/k8s/azure/db.yml -n pets

$ kubectl apply -f https://raw.githubusercontent.com/ashtwentyfour/spring-petclinic/refs/heads/main/k8s/azure/petclinic_aks_deploy.yml -n pets
```
