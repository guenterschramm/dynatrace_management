resource "dynatrace_metric_metadata" "Total_App_Pool_Uptime" {
  description  = "The length of time, in seconds, that the application pool has been running since Windows Process Activation Service (WAS) started."
  display_name = "Total App Pool Uptime"
  metric_id    = "metric-iis.total.applicationPool.uptime"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Second"
  dimensions {
    dimension {
      display_name = "App Pool"
      key          = "iis_app_pool"
    }
    dimension {
      display_name = "App Pool State"
      key          = "app_pool_state"
    }
  }
}
