terraform {
  required_version = ">= 0.12.3"
  required_providers {
      helm       = "1.3.0"
  }
}

resource "helm_release" "main" {
    name  = "main"
    chart = "${path.module}/files/helm_chart"
    force_update = true
}
