resource "dynatrace_custom_tags" "Nedcon_US_2161-Control_Panel_2" {
  entity_selector = "entityId(MULTIPROTOCOL_MONITOR-EF0B8BBE07C80D77)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "UCID"
      value   = "nedcon_us_2161"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "DeviceGroup"
      value   = "Control_Panel"
    }
  }
}
