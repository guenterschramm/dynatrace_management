resource "dynatrace_iam_policy_boundary" "xECM_Corporate-RUM" {
  name  = "xECM Corporate - RUM"
  query = "storage:frontend.name MATCH (\"xECM_Corporate*\");"
}
