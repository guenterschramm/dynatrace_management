resource "dynatrace_generic_relationships" "python_certificate_monitor_certificate_CALLS_process_group_instance" {
  enabled          = true
  created_by       = "com.dynatrace.custom.python-certificate-monitor 2.0.0"
  from_type        = "python:certificate_monitor_certificate"
  to_type          = "process_group_instance"
  type_of_relation = "CALLS"
  sources {
    source {
      condition   = "$prefix(certificate.monitor)"
      source_type = "Metrics"
    }
  }
}
