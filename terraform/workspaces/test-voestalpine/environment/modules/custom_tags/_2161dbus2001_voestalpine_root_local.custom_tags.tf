resource "dynatrace_custom_tags" "_2161dbus2001_voestalpine_root_local" {
  entity_selector = "entityId(HOST-B1FA8E48FA1AA76E)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Database"
      value   = "SQLServer"
    }
  }
}
