resource "dynatrace_activegate_updates" "environment" {
  auto_update = true
  scope       = "environment"
}
