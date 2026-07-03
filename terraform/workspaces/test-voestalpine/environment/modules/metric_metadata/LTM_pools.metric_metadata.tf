resource "dynatrace_metric_metadata" "LTM_pools" {
  description        = "The number of ltmPool entries in the table."
  display_name       = "LTM pools"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.ltm.pools"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
