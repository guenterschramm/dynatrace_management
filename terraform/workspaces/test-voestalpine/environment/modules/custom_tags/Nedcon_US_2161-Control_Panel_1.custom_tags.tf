resource "dynatrace_custom_tags" "Nedcon_US_2161-Control_Panel_1" {
  entity_selector = "entityId(MULTIPROTOCOL_MONITOR-D4657B60FC7B6220)"
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
