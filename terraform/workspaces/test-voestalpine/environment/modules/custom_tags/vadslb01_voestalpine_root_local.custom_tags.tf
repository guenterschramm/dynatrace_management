resource "dynatrace_custom_tags" "vadslb01_voestalpine_root_local" {
  entity_selector = "entityId(HOST-9E9FD2453A253ED7)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "TPI_Messaging"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "OTEL"
    }
  }
}
