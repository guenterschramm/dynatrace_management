resource "dynatrace_generic_relationships" "otel_process_RUNS_ON_otel_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.opentelemetry 3.0.3"
  from_type        = "otel:process"
  to_type          = "otel:host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(process.)"
      source_type = "Metrics"
    }
  }
}
