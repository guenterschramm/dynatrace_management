resource "dynatrace_metric_metadata" "Current_non-anonymous_users" {
  description  = "The number of users who currently have a non-anonymous connection using the Web service."
  display_name = "Current non-anonymous users"
  metric_id    = "metric-iis.W3SVC_WebService.CurrentNonAnonymousUsers"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
