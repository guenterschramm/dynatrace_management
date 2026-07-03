resource "dynatrace_custom_tags" "_2236dblogwebt_voestalpine_root_local" {
  entity_selector = "entityId(HOST-2343B18908538206)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "TPI_Messaging"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "RabbitMQ"
    }
  }
}
