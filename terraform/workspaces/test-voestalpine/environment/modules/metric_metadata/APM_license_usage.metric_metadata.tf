resource "dynatrace_metric_metadata" "APM_license_usage" {
  description  = "The amount of current connections expressed as a percentage of the total connectivity licenses"
  display_name = "APM license usage"
  metric_id    = "metric-func:com.dynatrace.extension.f5.bigip.apm.license_usage"
  unit         = "Percent"
}
