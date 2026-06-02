resource "dynatrace_custom_tags" "ITSM-Check_Functionality" {
  entity_selector = "entityId(SYNTHETIC_TEST-71B48C1DF8FD54D8)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "Remedy_Production"
    }
  }
}
