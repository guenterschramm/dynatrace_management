resource "dynatrace_generic_relationships" "otel_collector_instance_CHILD_OF_otel_collector_service" {
  enabled          = true
  created_by       = "com.dynatrace.extension.otel-collector 1.0.1"
  from_type        = "otel:collector:instance"
  to_type          = "otel:collector:service"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(otelcol_)"
      source_type = "Metrics"
    }
  }
}
