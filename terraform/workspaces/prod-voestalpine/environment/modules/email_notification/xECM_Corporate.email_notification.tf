resource "dynatrace_email_notification" "xECM_Corporate" {
  name                   = "xECM Corporate"
  active                 = true
  body                   = "{ProblemDetailsHTML}"
  cc                     = [ "stefan.reiboeck@voestalpine.com", "guenter.schramm@voestalpine.com" ]
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQwZTBkN2Y1Yi1jYTI4LTNmMWQtOWViYi1kYTk3NmM3NzgwZjG-71TeFdrerQ"
  subject                = "xECM Corporate Alert -{State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "xECM_Admins@voestalpine.com", "fabian.hinterberger@voestalpine.com", "dietmar.wallner@voestalpine.com" ]
}
