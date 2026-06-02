resource "dynatrace_metric_query" "metric-func_sfm_extension_percent_status" {
  metric_id       = "metric-func:sfm_extension_percent_status"
  metric_selector =<<-EOT
    ( ( (dsfm:extension.status:filter(and(ne("dt.extension.status",OK),ne("dt.extension.status",IDLE))):splitBy("dt.extension.name","dt.extension.config.id"):count:default(0):auto) / (dsfm:extension.status:splitBy("dt.extension.name","dt.extension.config.id"):count:auto):sort(value(avg,descending)) )*(100))
  EOT
}
