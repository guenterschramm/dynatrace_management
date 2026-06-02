resource "dynatrace_iam_permission" "account-viewer" {
  name              = "account-viewer"
  account           = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment     = ""
  group             = "2df7348e-1fef-4da6-aec5-dae53b81cc42"
  # management_zone = ""
}
