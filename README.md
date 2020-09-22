Terraform - Helm - Bug with PVC on recreate
===

## Description

On some conditions, Helm provider decides to recreate Helm (Kubernetes) resources. When PVC is managed by Helm chart, it fails because it doesn't create PVCs.

## Use case

1. `terraform init` (Optional)
1. `terraform apply`
1. `terraform taint helm_release.main`
1. `terraform apply`

The last step fails with following message:

```
Error: persistentvolumeclaims "main-simple-chart" not found
```
