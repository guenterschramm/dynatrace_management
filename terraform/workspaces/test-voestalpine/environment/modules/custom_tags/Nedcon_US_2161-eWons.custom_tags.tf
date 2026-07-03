resource "dynatrace_custom_tags" "Nedcon_US_2161-eWons" {
  entity_selector = "entityId(MULTIPROTOCOL_MONITOR-44902BABD9F444E4)"
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
