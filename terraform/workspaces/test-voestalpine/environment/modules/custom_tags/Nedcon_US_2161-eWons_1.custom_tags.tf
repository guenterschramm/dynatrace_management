resource "dynatrace_custom_tags" "Nedcon_US_2161-eWons_1" {
  entity_selector = "entityId(MULTIPROTOCOL_MONITOR-53949DBC52166BDF)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "UCID"
      value   = "nedcon_us_2161"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "DeviceGroup"
      value   = "eWons"
    }
  }
}
