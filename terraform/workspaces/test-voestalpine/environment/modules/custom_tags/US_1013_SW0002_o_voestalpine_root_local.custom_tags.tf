resource "dynatrace_custom_tags" "US_1013_SW0002_o_voestalpine_root_local" {
  entity_selector = "entityId(CUSTOM_DEVICE-4C76CC38DC9E76A8)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "UCID"
      value   = "nedcon_us_2161"
    }
  }
}
