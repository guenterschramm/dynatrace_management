resource "dynatrace_custom_tags" "vadsjms01d_voestalpine_root_local" {
  entity_selector = "entityId(HOST-A832BA71C4DD13DB)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "TPI_Messaging"
    }
  }
}
