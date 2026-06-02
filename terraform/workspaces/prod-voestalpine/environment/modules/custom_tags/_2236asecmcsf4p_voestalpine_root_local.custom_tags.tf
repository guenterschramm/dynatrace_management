resource "dynatrace_custom_tags" "_2236asecmcsf4p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-78653E05D05E6DE6)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
