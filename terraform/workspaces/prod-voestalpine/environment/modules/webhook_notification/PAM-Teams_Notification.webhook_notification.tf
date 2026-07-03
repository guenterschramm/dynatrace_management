resource "dynatrace_webhook_notification" "PAM-Teams_Notification" {
  name                   = "PAM - Teams Notification"
  active                 = false
  # insecure             = false
  notify_closed_problems = true
  # notify_event_merges  = false
  payload                = jsonencode({
      "AffectedEntityNames": "{ImpactedEntityNames}",
      "Application": "PAM",
      "PID": "{PID}",
      "ProblemID": "{ProblemID}",
      "ProblemTitle": "{ProblemTitle}",
      "State": "{State}",
      "url": "{ProblemURL}"
    })
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQ4MDEwYjdiZS1mZGIxLTMxMTctODhhMy1iMTI1NTdkZDQwZGK-71TeFdrerQ"
  secret_url             = "***107ee9967604870d***"
  # url                  = ""
  url_contains_secret    = true
}
