resource "dynatrace_generic_types" "otel_collector_instance" {
  name         = "otel:collector:instance"
  enabled      = true
  created_by   = "com.dynatrace.extension.otel-collector 1.0.1"
  display_name = "Collector Instance"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGEwOTQwZjFiLWRlYmMtNTQxNC1hZWMzLWNjZGEzMGJlNmJkNr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "meter-chart"
      id_pattern            = "{service_name}.{service_instance_id}"
      instance_name_pattern = "{service_name} {service_instance_id}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(otelcol_)"
          source_type = "Metrics"
        }
      }
    }
  }
}
