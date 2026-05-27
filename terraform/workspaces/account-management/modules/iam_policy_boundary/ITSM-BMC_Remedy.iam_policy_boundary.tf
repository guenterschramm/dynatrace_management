resource "dynatrace_iam_policy_boundary" "ITSM-BMC_Remedy" {
  name  = "ITSM - BMC Remedy"
  query = "environment:management-zone startsWith \"ITSM\";"
}
