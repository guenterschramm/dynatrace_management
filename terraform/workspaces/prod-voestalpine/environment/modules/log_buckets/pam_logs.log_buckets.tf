resource "dynatrace_log_buckets" "pam_logs" {
  enabled      = false
  bucket_name  = "pam_logs"
  insert_after = "vu9U3hXa3q0AAAABACdidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWJ1Y2tldHMtcnVsZXMABnRlbmFudAAGdGVuYW50ACRmZDYzMmNlMS0zMjUyLTMzMzYtYjViZi05NTIzYWZkOTA3MDS-71TeFdrerQ"
  matcher      = "matchesValue(dt.host_group.id, \"PAM\")"
  rule_name    = "PAM Log Files"
}
