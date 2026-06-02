resource "dynatrace_iam_user" "c_hackl_voestalpine_com" {
  email  = "c.hackl@voestalpine.com"
  groups = [ "d13538e2-1ec2-4021-89b8-22044cb82a3a", "a6140a90-81d6-4d36-a686-ed5e84d8c157", "e577c03d-051f-4762-b7cc-ebd7ac95d054" ]
}
