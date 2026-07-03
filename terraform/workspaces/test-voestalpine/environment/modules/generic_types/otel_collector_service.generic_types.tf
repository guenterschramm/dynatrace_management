resource "dynatrace_generic_types" "otel_collector_service" {
  name         = "otel:collector:service"
  enabled      = true
  created_by   = "com.dynatrace.extension.otel-collector 1.0.1"
  display_name = "Collector Service"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDcwN2VhMzkyLWQxODctNWY3MS1iMWI3LWNmZDY1YmE0MWM0Nb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "cluster"
      id_pattern            = "{service_name}"
      instance_name_pattern = "{service_name}"
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
