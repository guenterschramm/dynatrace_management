resource "dynatrace_iam_user" "guenter_schramm_voestalpine_com" {
  email  = "guenter.schramm@voestalpine.com"
  groups = [ "d13538e2-1ec2-4021-89b8-22044cb82a3a", "2df7348e-1fef-4da6-aec5-dae53b81cc42" ]
}
