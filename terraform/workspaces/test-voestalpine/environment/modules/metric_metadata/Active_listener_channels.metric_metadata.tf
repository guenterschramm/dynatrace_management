resource "dynatrace_metric_metadata" "Active_listener_channels" {
  description  = "Number of currently active listener channels in the worker process."
  display_name = "Active listener channels"
  metric_id    = "metric-iis.WASW3WP.ActiveListenerChannels"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
