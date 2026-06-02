resource "dynatrace_custom_tags" "_2217asbee4it01_voestalpine_root_local" {
  entity_selector = "entityId(HOST-64FAE88DC89F082C)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
