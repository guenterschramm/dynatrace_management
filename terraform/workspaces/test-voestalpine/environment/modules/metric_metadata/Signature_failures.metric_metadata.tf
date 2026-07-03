resource "dynatrace_metric_metadata" "Signature_failures" {
  description        = "Total number of general signature failures."
  display_name       = "Signature failures"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.dnssec.sig_failures_count"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "GTM", "DNSSEC" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "BIG-IP instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Zone name"
      key          = "zone.name"
    }
  }
}
