resource "kubernetes_service_account_v1" "service_account" {
  metadata {
    name      = var.name
    namespace = var.namespace
    annotations = {
      "terraform.io/module.source"  = local.source
      "terraform.io/module.version" = local.version
    }
  }
}

resource "kubernetes_secret_v1" "secret" {
  metadata {
    name      = "${var.name}-secret"
    namespace = var.namespace
    annotations = {
      "kubernetes.io/service-account.name" = kubernetes_service_account_v1.service_account.metadata[0].name
      "terraform.io/module.source"         = local.source
      "terraform.io/module.version"        = local.version
    }
  }

  type                           = "kubernetes.io/service-account-token"
  wait_for_service_account_token = true
}