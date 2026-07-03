resource "dynatrace_metric_metadata" "Data_Plane_CPU" {
  description        = "The average CPU usage of the data plane in the last one minute."
  display_name       = "Data Plane CPU"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.data.cpu1min"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "CPU" ]
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
  }
  metric_properties {
    max_value  = 100
    min_value  = 0
    value_type = "error"
  }
}
