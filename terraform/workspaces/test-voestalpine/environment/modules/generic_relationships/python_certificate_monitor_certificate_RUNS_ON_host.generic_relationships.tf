resource "dynatrace_generic_relationships" "python_certificate_monitor_certificate_RUNS_ON_host" {
  enabled          = true
  created_by       = "com.dynatrace.custom.python-certificate-monitor 1.10.26"
  from_type        = "python:certificate_monitor_certificate"
  to_type          = "host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(certificate.monitor)"
      source_type = "Metrics"
    }
  }
}
