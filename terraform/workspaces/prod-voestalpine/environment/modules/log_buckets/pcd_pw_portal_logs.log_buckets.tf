resource "dynatrace_log_buckets" "pcd_pw_portal_logs" {
  enabled      = false
  bucket_name  = "pcd_pw_portal_logs"
  insert_after = "vu9U3hXa3q0AAAABACdidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWJ1Y2tldHMtcnVsZXMABnRlbmFudAAGdGVuYW50ACQxNGViZDQ3MC0xZWI2LTM0N2MtYWJlYy01ZGY0Y2E2ZTg4OGW-71TeFdrerQ"
  matcher      = "matchesValue(dt.host_group.id, \"PCD_PW_Portal\")"
  rule_name    = "PCD_PW_Portal"
}
