resource "dynatrace_metric_metadata" "Current_anonymous_users" {
  description  = "The number of users who currently have an anonymous connection using the Web service."
  display_name = "Current anonymous users"
  metric_id    = "metric-iis.W3SVC_WebService.CurrentAnonymousUsers"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
