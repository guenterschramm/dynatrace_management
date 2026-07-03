resource "dynatrace_custom_tags" "vadslb02_voestalpine_root_local" {
  entity_selector = "entityId(HOST-AE948EA0C1B568B7)"
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
