resource "dynatrace_iam_group" "_2217_dt_webhosting_owner" {
  name          = "2217_dt_webhosting_owner"
  # description = ""
  permissions {
    permission {
      name  = "tenant-view-security-problems"
      type  = "management-zone"
      scope = "uqy31769:4530755757494056831"
    }
    permission {
      name  = "tenant-view-security-problems"
      type  = "tenant"
      scope = "uqy31769"
    }
  }
}
