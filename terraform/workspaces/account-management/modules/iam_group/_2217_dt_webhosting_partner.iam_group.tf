resource "dynatrace_iam_group" "_2217_dt_webhosting_partner" {
  name          = "2217_dt_webhosting_partner"
  # description = ""
  permissions {
    permission {
      name  = "tenant-view-security-problems"
      type  = "management-zone"
      scope = "uqy31769:4530755757494056831"
    }
  }
}
