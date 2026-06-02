resource "dynatrace_log_metrics" "log_PAM_User_Disconnect" {
  enabled    = true
  dimensions = [ "dt.host.ip", "host.id", "host.name", "host.hostname" ]
  key        = "log.PAM_User_Disconnect"
  measure    = "OCCURRENCE"
  query      =<<-EOT
    matchesValue(dt.host_group.id, "PAM") AND matchesValue(content, "*Failed to invoke PSMTokenHolder.exe process. Reason: PSMSR519E*") AND matchesValue(status, "ERROR")
  EOT
}
