resource "dynatrace_generic_types" "sap_system" {
  name         = "sap:system"
  enabled      = true
  created_by   = "com.dynatrace.ext.sap 1.7.4"
  display_name = "SAP System"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGQyMGIzMTRkLTJiYTYtNWU1Ni1iODQ0LTg1ZjBhZDlmZDA2Mr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "sap"
      id_pattern            = "sap_system_{sid}"
      instance_name_pattern = "SAP - {sid}"
      attributes {
        attribute {
          display_name = "ABAP System"
          key          = "sid"
          pattern      = "{sid}"
        }
        attribute {
          display_name = "Plugin Version"
          key          = "plugin_version"
          pattern      = "{version}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(sap.)"
          source_type = "Metrics"
        }
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
