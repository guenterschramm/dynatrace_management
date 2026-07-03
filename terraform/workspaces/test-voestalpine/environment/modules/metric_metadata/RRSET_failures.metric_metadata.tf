resource "dynatrace_metric_metadata" "RRSET_failures" {
  description        = "Total number of failures due to an RRSET failing to be signed."
  display_name       = "RRSET failures"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.dnssec.rrset_failures_count"
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
