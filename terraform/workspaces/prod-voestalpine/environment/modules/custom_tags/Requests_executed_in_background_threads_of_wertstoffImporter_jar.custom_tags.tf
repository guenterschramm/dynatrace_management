resource "dynatrace_custom_tags" "Requests_executed_in_background_threads_of_wertstoffImporter_jar" {
  entity_selector = "entityId(SERVICE-ABD89EE6BD264C7E)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "Importer"
    }
  }
}
