resource "dynatrace_log_buckets" "bee4it_logs" {
  enabled      = false
  bucket_name  = "bee4it_logs"
  insert_after = "vu9U3hXa3q0AAAABACdidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWJ1Y2tldHMtcnVsZXMABnRlbmFudAAGdGVuYW50ACQ2OTJjNGU0My1jMmMyLTMzZjYtYTFmNy0xMDM1ZDU4NDlkYjK-71TeFdrerQ"
  matcher      = "matchesValue(dt.host_group.id, \"Bee4IT\")"
  rule_name    = "Bee4IT Log Files"
}
