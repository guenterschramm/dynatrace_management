resource "dynatrace_custom_tags" "_2217pvwa0469p02" {
  entity_selector = "entityId(HOST-9DB0A2461301B6C2)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
