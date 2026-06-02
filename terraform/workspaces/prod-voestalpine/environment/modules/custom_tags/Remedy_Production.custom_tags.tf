resource "dynatrace_custom_tags" "Remedy_Production" {
  entity_selector = "entityId(APPLICATION-63B1740C1E7F005A)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "Remedy_Production"
    }
  }
}
