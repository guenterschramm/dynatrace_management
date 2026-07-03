resource "dynatrace_generic_types" "syslog_device" {
  name         = "syslog:device"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-auto-discovery 4.1.7"
  display_name = "Syslog device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDRmMzJmMTZjLTNkMTMtNTVkNS04YjFhLWFkNTU3NDMwOTcxMr7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "syslog_device_{dt.ingest.source.ip}"
      instance_name_pattern = "Syslog device at {dt.ingest.source.ip}"
      attributes {
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{dt.ingest.source.ip}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "dt.openpipeline.source"
          value_pattern = "$eq(extension:syslog)"
        }
        required_dimension {
          key           = "dt.ingest.source.ip"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
