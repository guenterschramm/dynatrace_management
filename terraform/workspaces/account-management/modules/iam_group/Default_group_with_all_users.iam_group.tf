resource "dynatrace_iam_group" "Default_group_with_all_users" {
  name        = "Default group with all users"
  description = "Default permissions applying to all users"
  permissions {
    permission {
      name  = "account-viewer"
      type  = "account"
      scope = "c65530cc-1621-455c-989d-22e43b2c00f5"
    }
  }
}
