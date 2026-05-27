resource "dynatrace_iam_policy_bindings_v2" "d13538e2-1ec2-4021-89b8-22044cb82a3a" {
  account       = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment = ""
  group         = "d13538e2-1ec2-4021-89b8-22044cb82a3a"
  policy {
    id = "2b16c4fe-b54e-4325-94dd-cb3dea0b0041#-#global#-#global"
    metadata = {
      "migration" = "PS-18734: Assign default Hub access policy to all users group for existing accounts"
    }
  }
}
