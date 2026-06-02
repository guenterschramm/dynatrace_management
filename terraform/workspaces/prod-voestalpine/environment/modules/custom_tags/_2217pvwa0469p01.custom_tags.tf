resource "dynatrace_custom_tags" "_2217pvwa0469p01" {
  entity_selector = "entityId(HOST-D2574E2AD91F2AA9)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
