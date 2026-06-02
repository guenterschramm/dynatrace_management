resource "dynatrace_log_buckets" "default_logs" {
  enabled      = true
  bucket_name  = "default_logs"
  insert_after = "vu9U3hXa3q0AAAABACdidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWJ1Y2tldHMtcnVsZXMABnRlbmFudAAGdGVuYW50ACQxMjZjN2VjMi02NWJjLTNlNjYtODNkYS1kMjRkNWFjNjhmYja-71TeFdrerQ"
  matcher      = "*"
  rule_name    = "default"
}
