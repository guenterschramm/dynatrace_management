resource "dynatrace_custom_tags" "Requests_executed_in_background_threads_of_primusSchnittstelle_jar" {
  entity_selector = "entityId(SERVICE-8EA5EB067AE6232E)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "Importer"
    }
  }
}
