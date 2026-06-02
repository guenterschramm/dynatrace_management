resource "dynatrace_custom_tags" "_2236asecmblzp_voestalpine_root_local" {
  entity_selector = "entityId(HOST-8DFA23544E33506F)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
