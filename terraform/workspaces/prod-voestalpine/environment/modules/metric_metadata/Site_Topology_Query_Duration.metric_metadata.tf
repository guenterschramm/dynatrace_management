resource "dynatrace_metric_metadata" "Site_Topology_Query_Duration" {
  description  = "Duration of the get_sites_topology API call used to collect site hierarchy topology."
  display_name = "Site Topology Query Duration"
  metric_id    = "metric-sfm.cisco.cc.get_sites_topology.duration"
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
