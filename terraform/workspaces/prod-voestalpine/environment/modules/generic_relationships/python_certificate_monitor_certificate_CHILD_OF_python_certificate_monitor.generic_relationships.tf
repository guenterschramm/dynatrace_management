resource "dynatrace_generic_relationships" "python_certificate_monitor_certificate_CHILD_OF_python_certificate_monitor" {
  enabled          = true
  created_by       = "com.dynatrace.custom.python-certificate-monitor 1.10.26"
  from_type        = "python:certificate_monitor_certificate"
  to_type          = "python:certificate_monitor"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(certificate.monitor)"
      source_type = "Metrics"
    }
  }
}
