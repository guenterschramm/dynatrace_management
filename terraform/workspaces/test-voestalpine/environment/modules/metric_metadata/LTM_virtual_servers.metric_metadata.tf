resource "dynatrace_metric_metadata" "LTM_virtual_servers" {
  description        = "The number of ltmVirtualServ entries in the table."
  display_name       = "LTM virtual servers"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.ltm.virtualservers"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
