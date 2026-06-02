resource "dynatrace_metric_metadata" "Total_Method_Requests_per_Second" {
  description  = "The rate HTTP requests are received."
  display_name = "Total Method Requests per Second"
  metric_id    = "metric-iis.method.requests.persec"
  tags         = [ "IIS", "Webserver" ]
  unit         = "PerSecond"
}
