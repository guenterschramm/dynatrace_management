# ATTENTION REST API didn't provide credential data
resource "dynatrace_vmware" "VMware_DC_Linz" {
  enabled   = true
  ipaddress = "2217vc0010at01.voestalpine.root.local"
  label     = "VMware DC Linz"
  password  = "$${state.secret_value}"
  username  = "2217_s_monitoring"
}
