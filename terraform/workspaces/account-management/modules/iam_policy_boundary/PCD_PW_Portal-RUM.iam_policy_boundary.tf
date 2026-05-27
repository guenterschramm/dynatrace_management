resource "dynatrace_iam_policy_boundary" "PCD_PW_Portal-RUM" {
  name  = "PCD_PW Portal - RUM"
  query =<<-EOT
    storage:frontend.name IN ("PCD_Portal","PW_Portal");
  EOT
}
