# Kubernetes Service Account with Terraform

This Terraform module provisions a Kubernetes Service Account and its associated Secret (service account token) in a specified namespace.
The module is designed for use with the Kubernetes provider and can be easily integrated into your Kubernetes deployments.

## Repository

This project is automatically mirrored on GitHub for sharing via the Terraform registry.
For any issues or contributions, please use the original GitLab repository.

- **Original (GitLab):** <https://gitlab.com/netified/terraform/kubernetes-service-account>
- **Mirror (GitHub):** <https://github.com/thomas-illiet/terraform-kubernetes-service-account>
- **Registry:** <https://registry.terraform.io/modules/thomas-illiet/service-account/kubernetes/latest>

## Features

- **Service Account Creation**: Automatically provisions a Kubernetes Service Account in the specified namespace.
- **Secret for Service Account Token**: Generates a secret with a service account token, linked to the created service account.

## Usage

Full configuration:

```
module "kubernetes_service_account" {
  source = "thomas-illiet/service-account/kubernetes"
  version = "1.1.0"

  name       = "my-name"
  namespace  = "my-namespace"
}
```

## Variables

| Name        | Type     | Default   | Description                                     |
| ----------- | -------- | --------- | ----------------------------------------------- |
| `name`      | `string` | `null`    | Specific name for the service account.          |
| `namespace` | `string` | `default` | Namespace where the service account is located. |

## License

This module is licensed under the MIT License.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.