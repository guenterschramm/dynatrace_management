resource "dynatrace_metric_metadata" "Health_ping_reply_latency" {
  description  = "Time, in 100 nanosecond increments, taken by worker process to reply to last health ping."
  display_name = "Health ping reply latency"
  metric_id    = "metric-iis.WASW3WP.HealthPingReplyLatency"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "NanoSecond"
}
