resource "dynatrace_email_notification" "Database" {
  name                   = "Database"
  active                 = true
  body                   = "{ProblemDetailsHTML}"
  cc                     = [ "guenter.schramm@voestalpine.com" ]
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACRhNzRiYzYyNC1iMTk2LTNiYWQtOTRkOS0yODFmMDkwMTUzN2a-71TeFdrerQ"
  subject                = "Database Alert - {State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "manuel.ehmair@voestalpine.com" ]
}
