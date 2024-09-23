module "kubernetes_service_account" {
  source  = "thomas-illiet/service-account/kubernetes"
  version = "1.1.0"

  name      = "my-name"
  namespace = "my-namespace"
}