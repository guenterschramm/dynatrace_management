resource "dynatrace_generic_types" "otel_host" {
  name         = "otel:host"
  enabled      = true
  created_by   = "com.dynatrace.extension.opentelemetry 2.1.3"
  display_name = "Host"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGI0MmQzOTdkLWJjZGYtNTNkZS1hNDFlLTA2NTQ4NjBkMDU3Zb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "host"
      id_pattern            = "otel_host_{host.id}"
      instance_name_pattern = "{host.name}"
      attributes {
        attribute {
          display_name = "OS type"
          key          = "os_type"
          pattern      = "{os.type}"
        }
        attribute {
          display_name = "OS name"
          key          = "os_name"
          pattern      = "{os.name}"
        }
        attribute {
          display_name = "OS version"
          key          = "os_version"
          pattern      = "{os.version}"
        }
        attribute {
          display_name = "OS description"
          key          = "os_description"
          pattern      = "{os.description}"
        }
        attribute {
          display_name = "OS build ID"
          key          = "os_build_id"
          pattern      = "{os.build.id}"
        }
        attribute {
          display_name = "Host ID"
          key          = "host_id"
          pattern      = "{host.id}"
        }
        attribute {
          display_name = "Architecture"
          key          = "host_arch"
          pattern      = "{host.arch}"
        }
        attribute {
          display_name = "CPU Model Name"
          key          = "host_cpu_model_name"
          pattern      = "{host.cpu.model.name}"
        }
        attribute {
          display_name = "IP address"
          key          = "dt.ip_addresses"
          pattern      = "{host.ip}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "host.id"
        }
        required_dimension {
          key = "host.name"
        }
        required_dimension {
          key           = "dt.metrics.source"
          value_pattern = "$eq(opentelemetry)"
        }
      }
      sources {
        source {
          condition   = "$prefix(system.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(process.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "host"
      id_pattern            = "otel_host_{host.id}"
      instance_name_pattern = "{host.name}"
      attributes {
        attribute {
          display_name = "OS type"
          key          = "os_type"
          pattern      = "{os.type}"
        }
        attribute {
          display_name = "OS name"
          key          = "os_name"
          pattern      = "{os.name}"
        }
        attribute {
          display_name = "OS version"
          key          = "os_version"
          pattern      = "{os.version}"
        }
        attribute {
          display_name = "OS description"
          key          = "os_description"
          pattern      = "{os.description}"
        }
        attribute {
          display_name = "OS build ID"
          key          = "os_build_id"
          pattern      = "{os.build.id}"
        }
        attribute {
          display_name = "Host ID"
          key          = "host_id"
          pattern      = "{host.id}"
        }
        attribute {
          display_name = "Architecture"
          key          = "host_arch"
          pattern      = "{host.arch}"
        }
        attribute {
          display_name = "CPU Model Name"
          key          = "host_cpu_model_name"
          pattern      = "{host.cpu.model.name}"
        }
        attribute {
          display_name = "IP address"
          key          = "dt.ip_addresses"
          pattern      = "{host.ip}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "host.id"
        }
        required_dimension {
          key = "host.name"
        }
        required_dimension {
          key           = "dt.openpipeline.source"
          value_pattern = "$eq(/api/v2/otlp/v1/logs)"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "host"
      id_pattern            = "otel_host_{host.id}"
      instance_name_pattern = "{host.name}"
      attributes {
        attribute {
          display_name = "OS type"
          key          = "os_type"
          pattern      = "{os.type}"
        }
        attribute {
          display_name = "OS name"
          key          = "os_name"
          pattern      = "{os.name}"
        }
        attribute {
          display_name = "OS version"
          key          = "os_version"
          pattern      = "{os.version}"
        }
        attribute {
          display_name = "OS description"
          key          = "os_description"
          pattern      = "{os.description}"
        }
        attribute {
          display_name = "OS build ID"
          key          = "os_build_id"
          pattern      = "{os.build.id}"
        }
        attribute {
          display_name = "Host ID"
          key          = "host_id"
          pattern      = "{host.id}"
        }
        attribute {
          display_name = "Architecture"
          key          = "host_arch"
          pattern      = "{host.arch}"
        }
        attribute {
          display_name = "CPU Model Name"
          key          = "host_cpu_model_name"
          pattern      = "{host.cpu.model.name}"
        }
        attribute {
          display_name = "IP address"
          key          = "dt.ip_addresses"
          pattern      = "{host.ip}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "host.id"
        }
        required_dimension {
          key = "host.name"
        }
        required_dimension {
          key           = "telemetry.sdk.name"
          value_pattern = "$eq(opentelemetry)"
        }
      }
      sources {
        source {
          source_type = "Spans"
        }
      }
    }
    rule {
      icon_pattern          = "host"
      id_pattern            = "otel_host_{host.id}"
      instance_name_pattern = "{host.name}"
      attributes {
        attribute {
          display_name = "OS type"
          key          = "os_type"
          pattern      = "{os.type}"
        }
        attribute {
          display_name = "OS name"
          key          = "os_name"
          pattern      = "{os.name}"
        }
        attribute {
          display_name = "OS version"
          key          = "os_version"
          pattern      = "{os.version}"
        }
        attribute {
          display_name = "OS description"
          key          = "os_description"
          pattern      = "{os.description}"
        }
        attribute {
          display_name = "OS build ID"
          key          = "os_build_id"
          pattern      = "{os.build.id}"
        }
        attribute {
          display_name = "Host ID"
          key          = "host_id"
          pattern      = "{host.id}"
        }
        attribute {
          display_name = "Architecture"
          key          = "host_arch"
          pattern      = "{host.arch}"
        }
        attribute {
          display_name = "CPU Model Name"
          key          = "host_cpu_model_name"
          pattern      = "{host.cpu.model.name}"
        }
        attribute {
          display_name = "IP address"
          key          = "dt.ip_addresses"
          pattern      = "{host.ip}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "host.id"
        }
        required_dimension {
          key = "host.name"
        }
        required_dimension {
          key           = "telemetry.sdk.name"
          value_pattern = "$eq(odin)"
        }
      }
      sources {
        source {
          source_type = "Spans"
        }
      }
    }
    rule {
      icon_pattern          = "host"
      id_pattern            = "otel_host_{host.id}"
      instance_name_pattern = "{host.name}"
      attributes {
        attribute {
          display_name = "OS type"
          key          = "os_type"
          pattern      = "{os.type}"
        }
        attribute {
          display_name = "OS name"
          key          = "os_name"
          pattern      = "{os.name}"
        }
        attribute {
          display_name = "OS version"
          key          = "os_version"
          pattern      = "{os.version}"
        }
        attribute {
          display_name = "OS description"
          key          = "os_description"
          pattern      = "{os.description}"
        }
        attribute {
          display_name = "OS build ID"
          key          = "os_build_id"
          pattern      = "{os.build.id}"
        }
        attribute {
          display_name = "Host ID"
          key          = "host_id"
          pattern      = "{host.id}"
        }
        attribute {
          display_name = "Architecture"
          key          = "host_arch"
          pattern      = "{host.arch}"
        }
        attribute {
          display_name = "CPU Model Name"
          key          = "host_cpu_model_name"
          pattern      = "{host.cpu.model.name}"
        }
        attribute {
          display_name = "IP address"
          key          = "dt.ip_addresses"
          pattern      = "{host.ip}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "host.id"
        }
        required_dimension {
          key = "host.name"
        }
        required_dimension {
          key           = "telemetry.sdk.name"
          value_pattern = "$eq(otel)"
        }
      }
      sources {
        source {
          source_type = "Spans"
        }
      }
    }
  }
}
