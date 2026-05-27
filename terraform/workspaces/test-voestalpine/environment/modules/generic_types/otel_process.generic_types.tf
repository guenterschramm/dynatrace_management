resource "dynatrace_generic_types" "otel_process" {
  name         = "otel:process"
  enabled      = true
  created_by   = "com.dynatrace.extension.opentelemetry 2.1.3"
  display_name = "Process"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDAzMTM1MjdiLTRmYTgtNWY1Ni04MzcxLTJiODE3Mjk1NzE2Ob7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "process"
      id_pattern            = "otel_process_{host.id}-{process.executable.name}"
      instance_name_pattern = "{process.executable.name}"
      attributes {
        attribute {
          display_name = "Process command line"
          key          = "process_command_line"
          pattern      = "{process.command_line}"
        }
        attribute {
          display_name = "PID"
          key          = "process_pid"
          pattern      = "{process.pid}"
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
          key = "process.executable.name"
        }
        required_dimension {
          key           = "dt.metrics.source"
          value_pattern = "$eq(opentelemetry)"
        }
      }
      sources {
        source {
          condition   = "$prefix(process.)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "process"
      id_pattern            = "otel_process_{host.id}-{process.executable.name}"
      instance_name_pattern = "{process.executable.name}"
      attributes {
        attribute {
          display_name = "Process command line"
          key          = "process_command_line"
          pattern      = "{process.command_args}"
        }
        attribute {
          display_name = "PID"
          key          = "process_pid"
          pattern      = "{process.pid}"
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
          key = "process.executable.name"
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
      icon_pattern          = "process"
      id_pattern            = "otel_process_{host.id}-{process.executable.name}"
      instance_name_pattern = "{process.executable.name}"
      attributes {
        attribute {
          display_name = "Process command line"
          key          = "process_command_line"
          pattern      = "{process.command_args}"
        }
        attribute {
          display_name = "PID"
          key          = "process_pid"
          pattern      = "{process.pid}"
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
          key = "process.executable.name"
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
      icon_pattern          = "process"
      id_pattern            = "otel_process_{host.id}-{process.executable.name}"
      instance_name_pattern = "{process.executable.name}"
      attributes {
        attribute {
          display_name = "Process command line"
          key          = "process_command_line"
          pattern      = "{process.command_args}"
        }
        attribute {
          display_name = "PID"
          key          = "process_pid"
          pattern      = "{process.pid}"
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
          key = "process.executable.name"
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
      icon_pattern          = "process"
      id_pattern            = "otel_process_{host.id}-{process.executable.name}"
      instance_name_pattern = "{process.executable.name}"
      attributes {
        attribute {
          display_name = "Process command line"
          key          = "process_command_line"
          pattern      = "{process.command_args}"
        }
        attribute {
          display_name = "PID"
          key          = "process_pid"
          pattern      = "{process.pid}"
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
          key = "process.executable.name"
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
