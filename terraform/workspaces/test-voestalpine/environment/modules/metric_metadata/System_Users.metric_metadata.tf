resource "dynatrace_metric_metadata" "System_Users" {
  description        = "The number of user sessions for which this host is storing state information. hrSystemNumUsers"
  display_name       = "System Users"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.host.num_users"
  source_entity_type = "f5:instance"
  tags               = [ "F5" ]
  unit               = "Count"
}
