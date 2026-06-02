resource "dynatrace_metric_metadata" "Kernel_URI_cache_hits" {
  description  = "Total number of successful lookups in the kernel URI cache (since service startup)."
  display_name = "Kernel URI cache hits"
  metric_id    = "metric-iis.W3SVC_WebServiceCache.KernelURICacheHits.count"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
