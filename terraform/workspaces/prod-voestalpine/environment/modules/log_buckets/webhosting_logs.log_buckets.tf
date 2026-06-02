resource "dynatrace_log_buckets" "webhosting_logs" {
  enabled      = false
  bucket_name  = "webhosting_logs"
  insert_after = "vu9U3hXa3q0AAAABACdidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWJ1Y2tldHMtcnVsZXMABnRlbmFudAAGdGVuYW50ACRmODE5ZTBhMC00M2YzLTNiMjEtOTM5NC05MTlkNjBkNWQ4ODe-71TeFdrerQ"
  matcher      = "matchesValue(dt.host_group.id, \"Webhosting\")"
  rule_name    = "Webhosting Logs"
}
