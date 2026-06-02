resource "dynatrace_email_notification" "xECM_Steel" {
  name                     = "xECM Steel"
  active                   = true
  body                     = "{ProblemDetailsHTML}"
  cc                       = [ "guenter.schramm@voestalpine.com", "stefan.reiboeck@voestalpine.com" ]
  # notify_closed_problems = false
  profile                  = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQ2OTc5OTI2OC05NTc1LTM1MTAtYmJkNi1lM2E0Y2Y3ZWViZDW-71TeFdrerQ"
  subject                  = "xECM Steel Alert - {State} Problem {ProblemID}: {ImpactedEntity}"
  to                       = [ "fabian.hinterberger@voestalpine.com", "xECM_Admins@voestalpine.com", "dietmar.wallner@voestalpine.com" ]
}
