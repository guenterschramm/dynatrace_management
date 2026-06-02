resource "dynatrace_log_buckets" "xecm_logs_short" {
  enabled      = false
  bucket_name  = "xecm_logs_short"
  insert_after = "vu9U3hXa3q0AAAABACdidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWJ1Y2tldHMtcnVsZXMABnRlbmFudAAGdGVuYW50ACRiZTgxMzVkNi0zZThjLTM5NzctYTYwNy0zOTZhMmJiYWUxNTG-71TeFdrerQ"
  matcher      =<<-EOT
    matchesValue(dt.host_group.id, "xECM_P") and matchesPhrase(log.source, "Opentext\\OTCS\\")
  EOT
  rule_name    = "xECM high volume Logs Files"
}
