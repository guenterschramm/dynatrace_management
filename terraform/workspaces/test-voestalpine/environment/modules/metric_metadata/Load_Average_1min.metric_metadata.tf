resource "dynatrace_metric_metadata" "Load_Average_1min" {
  description        = "The 1 minute load average. laLoad"
  display_name       = "Load Average 1min"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.host.load_average"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
