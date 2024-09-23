output "id" {
  value = kubernetes_service_account_v1.service_account.id
}

output "token" {
  value = kubernetes_secret_v1.secret.data.token
}