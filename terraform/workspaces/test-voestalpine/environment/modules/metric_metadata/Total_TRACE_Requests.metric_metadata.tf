resource "dynatrace_metric_metadata" "Total_TRACE_Requests" {
  description  = "The number of HTTP requests using the TRACE method (since service startup). Trace requests allow the client to see what is being received at the end of the request chain and use the information for diagnostic purposes."
  display_name = "Total TRACE Requests"
  metric_id    = "metric-iis.total.trace.requests.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
