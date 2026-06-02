resource "dynatrace_custom_tags" "vadsjms02_voestalpine_root_local" {
  entity_selector = "entityId(HOST-FAFF60EA12CC8401)"
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
