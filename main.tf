resource "kubernetes_service_account_v1" "service_account" {
  metadata {
    name = var.account_name
    annotations = {
      "terrafom.io/module.source"  = local.source
      "terrafom.io/module.version" = local.version
    }
  }
}

resource "kubernetes_secret_v1" "secret" {
  metadata {
    name = "${var.account_name}-secret"
    annotations = {
      "kubernetes.io/service-account.name" = kubernetes_service_account_v1.service_account.metadata.0.name
      "terrafom.io/module.source"          = local.source
      "terrafom.io/module.version"         = local.version
    }
  }

  type                           = "kubernetes.io/service-account-token"
  wait_for_service_account_token = true
}
