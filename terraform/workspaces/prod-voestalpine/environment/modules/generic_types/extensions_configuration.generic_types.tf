resource "dynatrace_generic_types" "extensions_configuration" {
  name         = "extensions:configuration"
  enabled      = true
  created_by   = "com.dynatrace.extension.extensions-health 1.2.6"
  display_name = "extension's monitoring configuration"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDc1ZTY2OWM4LTEzNGItNTRjYi1hYmUzLWZlZTM5YmFlZDgyYr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "app-configuration"
      id_pattern            = "{dt.extension.config.id}"
      instance_name_pattern = "{dt.extension.config.label}"
      attributes {
        attribute {
          display_name = "Configuration ID"
          key          = "extConfigId"
          pattern      = "{dt.extension.config.id}"
        }
        attribute {
          display_name = "Configuration label"
          key          = "extConfigLabel"
          pattern      = "{dt.extension.config.label}"
        }
        attribute {
          display_name = "Datasource name"
          key          = "extDs"
          pattern      = "{dt.extension.ds}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "dt.extension.config.label"
        }
        required_dimension {
          key = "dt.extension.ds"
        }
        required_dimension {
          key           = "event.type"
          value_pattern = "$eq(SFM)"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "app-configuration"
      id_pattern            = "{dt.extension.config.id}"
      instance_name_pattern = "{dt.extension.config.id}"
      attributes {
        attribute {
          display_name = "Host name"
          key          = "extHost"
          pattern      = "{host.name}"
        }
        attribute {
          display_name = "ActiveGate ID"
          key          = "extAgId"
          pattern      = "{dt.active_gate.id}"
        }
        attribute {
          display_name = "Datasource name"
          key          = "extDs"
          pattern      = "{dt.extension.ds}"
        }
        attribute {
          display_name = "Extension name"
          key          = "extName"
          pattern      = "{dt.extension.name}"
        }
        attribute {
          display_name = "ActiveGate group"
          key          = "extAgGroup"
          pattern      = "{dt.active_gate.group.name}"
        }
        attribute {
          display_name = "Configuration ID"
          key          = "extConfigId"
          pattern      = "{dt.extension.config.id}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "dt.extension.name"
        }
        required_dimension {
          key = "dt.extension.ds"
        }
      }
      sources {
        source {
          condition   = "$prefix(dsfm:extension.status)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "app-configuration"
      id_pattern            = "{dt.extension.config.id}"
      instance_name_pattern = "{dt.extension.config.id}"
      attributes {
        attribute {
          display_name = "Host name"
          key          = "extHost"
          pattern      = "{host.name}"
        }
        attribute {
          display_name = "ActiveGate ID"
          key          = "extAgId"
          pattern      = "{dt.active_gate.id}"
        }
        attribute {
          display_name = "Extension name"
          key          = "extName"
          pattern      = "{dt.extension.name}"
        }
        attribute {
          display_name = "ActiveGate group"
          key          = "extAgGroup"
          pattern      = "{dt.active_gate.group.name}"
        }
        attribute {
          display_name = "Configuration ID"
          key          = "extConfigId"
          pattern      = "{dt.extension.config.id}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "dt.extension.name"
        }
      }
      sources {
        source {
          condition   = "$prefix(dsfm:extension)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "app-configuration"
      id_pattern            = "{dt.extension.config.id}"
      instance_name_pattern = "{dt.extension.config.id}"
      attributes {
        attribute {
          display_name = "Configuration ID"
          key          = "extConfigId"
          pattern      = "{dt.extension.config.id}"
        }
      }
      sources {
        source {
          condition   = "$eq(dsfm:server.metrics.ingest.external_datapoints)"
          source_type = "Metrics"
        }
      }
    }
  }
}
