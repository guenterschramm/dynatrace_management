resource "dynatrace_monitored_technologies_php" "environment" {
  enabled               = true
  enable_php_cli_server = true
  # enabled_fast_cgi    = false
  host_id               = "environment"
}
