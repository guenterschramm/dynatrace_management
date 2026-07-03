resource "dynatrace_metric_metadata" "DNSKEY_queries" {
  description        = "Total number of queries for DNSKEY type."
  display_name       = "DNSKEY queries"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.dnssec.dnskey_queries_count"
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
