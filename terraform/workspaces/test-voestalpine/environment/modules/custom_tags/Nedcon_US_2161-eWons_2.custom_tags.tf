resource "dynatrace_custom_tags" "Nedcon_US_2161-eWons_2" {
  entity_selector = "entityId(MULTIPROTOCOL_MONITOR-90DAFED3256EF9D1)"
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
