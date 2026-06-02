resource "dynatrace_metric_metadata" "Application_Pool_State" {
  description  = "State metric for Application Pools. State is expressed in the 'App Pool' dimension. (1 - Uninitialized, 2 - Initialized, 3 - Running, 4 - Disabling, 5 - Disabled, 6 - Shutdown Pending, 7 - Delete Pending)."
  display_name = "Application Pool State"
  metric_id    = "metric-iis.current.applicationPool.state"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Unspecified"
  dimensions {
    dimension {
      display_name = "App Pool State"
      key          = "app_pool_state"
    }
    dimension {
      display_name = "App Pool"
      key          = "iis_app_pool"
    }
  }
}
