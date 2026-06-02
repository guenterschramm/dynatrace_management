resource "dynatrace_kubernetes_app" "environment" {
  scope = "environment"
  kubernetes_app_options {
    enable_kubernetes_app = true
  }
}
