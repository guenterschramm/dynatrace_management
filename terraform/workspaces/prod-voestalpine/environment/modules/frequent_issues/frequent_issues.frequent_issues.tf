resource "dynatrace_frequent_issues" "frequent_issues" {
  detect_apps  = false
  detect_infra = false
  detect_txn   = false
}
