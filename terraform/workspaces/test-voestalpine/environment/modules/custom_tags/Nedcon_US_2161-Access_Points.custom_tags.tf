resource "dynatrace_custom_tags" "Nedcon_US_2161-Access_Points" {
  entity_selector = "entityId(MULTIPROTOCOL_MONITOR-E15FBA5AD92F6F15)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "UCID"
      value   = "nedcon_us_2161"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "DeviceGroup"
      value   = "Access_Point"
    }
  }
}
