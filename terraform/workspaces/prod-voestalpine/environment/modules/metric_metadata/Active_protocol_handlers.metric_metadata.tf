resource "dynatrace_metric_metadata" "Active_protocol_handlers" {
  description  = "Number of currently active protocol handlers in the worker process."
  display_name = "Active protocol handlers"
  metric_id    = "metric-iis.WASW3WP.ActiveProtocolHandlers"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
