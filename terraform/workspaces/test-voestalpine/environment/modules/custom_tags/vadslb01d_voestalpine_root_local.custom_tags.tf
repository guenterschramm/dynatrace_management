resource "dynatrace_custom_tags" "vadslb01d_voestalpine_root_local" {
  entity_selector = "entityId(HOST-57189FE11F7739CE)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "RabbitMQ"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "TPI_Messaging"
    }
  }
}
