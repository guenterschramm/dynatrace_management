resource "dynatrace_custom_tags" "vadsjms01_voestalpine_root_local" {
  entity_selector = "entityId(HOST-F35151D22C47E99C)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "TibcoEMS"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "TPI_Messaging"
    }
  }
}
