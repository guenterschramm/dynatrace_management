resource "dynatrace_custom_tags" "Tomcat_am_Archive_Server" {
  entity_selector = "entityId(SERVICE-E9718129A3F3B361)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "Archivserver"
    }
  }
}
