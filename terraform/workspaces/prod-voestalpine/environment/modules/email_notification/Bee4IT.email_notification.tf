resource "dynatrace_email_notification" "Bee4IT" {
  name                   = "Bee4IT"
  active                 = true
  body                   = "{ProblemDetailsHTML}"
  cc                     = [ "guenter.schramm@voestalpine.com" ]
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQ0MGZmMTg0ZS1hNmVmLTMwMjktYjYyNC05YWVmNGIyYTRiZjO-71TeFdrerQ"
  subject                = "Bee4IT Alert - {State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "Christian.Meisl@voestalpine.com", "johannes.Palmetshofer@voestalpine.com", "Michael.Pointl@voestalpine.com" ]
}
