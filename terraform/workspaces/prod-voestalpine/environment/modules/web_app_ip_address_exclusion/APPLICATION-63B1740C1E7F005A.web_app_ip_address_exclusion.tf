resource "dynatrace_web_app_ip_address_exclusion" "APPLICATION-63B1740C1E7F005A" {
  application_id               = "APPLICATION-63B1740C1E7F005A"
  ip_address_exclusion_include = false
  ip_exclusion_list {
    ip_exclusion {
      ip    = "164.3.25.212"
      ip_to = "164.3.25.214"
    }
  }
}
