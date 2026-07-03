resource "dynatrace_metric_metadata" "Failures_1" {
  description        = "The number of failures for executing this rule."
  display_name       = "Failures"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.rule.failures_count"
  source_entity_type = "f5:rule"
  tags               = [ "F5", "GTM", "iRule" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "BIG-IP instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Rule name"
      key          = "rule.name"
    }
    dimension {
      display_name = "Rule event type"
      key          = "rule.event_type"
    }
  }
}
