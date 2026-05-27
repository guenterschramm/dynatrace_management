resource "dynatrace_log_buckets" "default_logs" {
  enabled      = true
  bucket_name  = "default_logs"
  insert_after = "vu9U3hXa3q0AAAABACdidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWJ1Y2tldHMtcnVsZXMABnRlbmFudAAGdGVuYW50ACQ1Yzk1ODcwOS0xOTIwLTNjYWItYTZmZS03ODhmNWU5ODBiNDS-71TeFdrerQ"
  matcher      = "*"
  rule_name    = "default"
}
