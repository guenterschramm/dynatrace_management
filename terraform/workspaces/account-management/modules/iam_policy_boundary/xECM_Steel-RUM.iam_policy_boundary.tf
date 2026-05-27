resource "dynatrace_iam_policy_boundary" "xECM_Steel-RUM" {
  name  = "xECM Steel - RUM"
  query = "storage:frontend.name MATCH (\"xECM_Steel*\");"
}
