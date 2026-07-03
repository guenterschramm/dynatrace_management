resource "dynatrace_metric_metadata" "LTM_nodes" {
  description        = "The number of ltmNodeAddr entries in the table."
  display_name       = "LTM nodes"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.ltm.nodes"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
