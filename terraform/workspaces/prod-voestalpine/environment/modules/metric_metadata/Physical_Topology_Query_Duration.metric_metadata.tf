resource "dynatrace_metric_metadata" "Physical_Topology_Query_Duration" {
  description  = "Duration of the get_physical_topology API call used to collect physical network topology data."
  display_name = "Physical Topology Query Duration"
  metric_id    = "metric-sfm.cisco.cc.get_physical_topology.duration"
  unit         = "Seconds"
  dimensions {
    dimension {
      display_name = "Configuration Name"
      key          = "config_name"
    }
    dimension {
      display_name = "Endpoint URL"
      key          = "endpoint_url"
    }
  }
}
