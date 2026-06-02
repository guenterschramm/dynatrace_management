resource "dynatrace_custom_tags" "_2236asmonitor01_voestalpine_root_local" {
  entity_selector = "entityId(HOST-3B354B5980F04E11)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
