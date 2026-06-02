resource "dynatrace_custom_tags" "_2217sqmserv01_voestalpine_root_local" {
  entity_selector = "entityId(HOST-FFAA6AF8379BA5D3)"
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
