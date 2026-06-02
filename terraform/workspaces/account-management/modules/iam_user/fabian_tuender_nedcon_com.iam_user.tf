resource "dynatrace_iam_user" "fabian_tuender_nedcon_com" {
  email  = "fabian.tuender@nedcon.com"
  groups = [ "d13538e2-1ec2-4021-89b8-22044cb82a3a", "a6140a90-81d6-4d36-a686-ed5e84d8c157", "2f5b0dc8-a618-44e4-aa51-5399ae7c1171" ]
}
