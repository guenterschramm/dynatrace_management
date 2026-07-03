resource "dynatrace_os_services" "Auto-start_Linux_OS_Services" {
  name                      = "Auto-start Linux OS Services"
  enabled                   = true
  alert_activation_duration = 1
  alerting                  = true
  insert_after              = ""
  monitoring                = false
  # not_installed_alerting  = false
  scope                     = "environment"
  status_condition_linux    = "$eq(failed)"
  system                    = "LINUX"
  detection_conditions_linux {
    linux_detection_condition {
      property          = "StartupType"
      startup_condition = "$eq(enabled)"
    }
  }
}
