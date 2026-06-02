resource "dynatrace_metric_metadata" "Total_Connection_Attempts_All_instances" {
  description  = "Total Connection Attempts is the number of connections that have been attempted using the Web service (since service startup).  This counter is for all instances listed."
  display_name = "Total Connection Attempts (All instances)"
  metric_id    = "metric-iis.total.connectionAttempts.allInstances.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
