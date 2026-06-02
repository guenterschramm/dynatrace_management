resource "dynatrace_custom_tags" "VADSLB03_voestalpine_root_local" {
  entity_selector = "entityId(HOST-4A89D7A81B6954C4)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "OTEL"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "TPI_Messaging"
    }
  }
}
