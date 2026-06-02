resource "dynatrace_log_buckets" "xecm_logs" {
  enabled      = false
  bucket_name  = "xecm_logs"
  insert_after = "vu9U3hXa3q0AAAABACdidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWJ1Y2tldHMtcnVsZXMABnRlbmFudAAGdGVuYW50ACQ5NTVlYzZkZS1hNzgzLTNlNzItOWFkMy02ZmYyMjk3NzM2M2K-71TeFdrerQ"
  matcher      =<<-EOT
    matchesValue(dt.host_group.id, "xECM_P") and not matchesPhrase(log.source, "Opentext\\OTCS\\")
  EOT
  rule_name    = "xECM Log Files"
}
