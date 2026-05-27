resource "dynatrace_iam_policy_boundary" "PAM-RUM" {
  name  = "PAM - RUM"
  query = "storage:frontend.name MATCH (\"PAM*\");"
}
