resource "dynatrace_generic_types" "extensions_extension" {
  name         = "extensions:extension"
  enabled      = true
  created_by   = "com.dynatrace.extension.extensions-health 1.2.6"
  display_name = "Extension"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGNiNDY1MWY3LThjYTktNWI1MC04NzdjLThiMDljOThhN2ZiMr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "plugin"
      id_pattern            = "{dt.extension.name}"
      instance_name_pattern = "{dt.extension.name}"
      attributes {
        attribute {
          display_name = "Extension ID"
          key          = "extId"
          pattern      = "{dt.extension.name}"
        }
        attribute {
          display_name = "Datasource name"
          key          = "extDs"
          pattern      = "{dt.extension.ds}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "dt.extension.ds"
        }
        required_dimension {
          key = "dt.extension.name"
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
      icon_pattern          = "plugin"
      id_pattern            = "{dt.extension.name}"
      instance_name_pattern = "{dt.extension.name}"
      attributes {
        attribute {
          display_name = "Extension ID"
          key          = "extId"
          pattern      = "{dt.extension.name}"
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
      id_pattern            = "{dt.extension.name}"
      instance_name_pattern = "{dt.extension.name}"
      attributes {
        attribute {
          display_name = "Extension name"
          key          = "extId"
          pattern      = "{dt.extension.name}"
        }
        attribute {
          display_name = "Datasource name"
          key          = "extDs"
          pattern      = "{dt.extension.ds}"
        }
      }
      required_dimensions {
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
      icon_pattern          = "plugin"
      id_pattern            = "{source}"
      instance_name_pattern = "{source}"
      attributes {
        attribute {
          display_name = "Extension ID"
          key          = "extId"
          pattern      = "{source}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "dt.extension.config.id"
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
