resource "dynatrace_iam_policy_boundary" "Webhosting_Service-RUM" {
  name  = "Webhosting Service - RUM"
  query = "storage:frontend.name MATCH (\"Webhosting*\");"
}
