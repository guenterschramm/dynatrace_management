resource "dynatrace_iam_policy_boundary" "Bee4IT-RUM" {
  name  = "Bee4IT - RUM"
  query = "storage:frontend.name MATCH (\"Bee4IT*\");"
}
