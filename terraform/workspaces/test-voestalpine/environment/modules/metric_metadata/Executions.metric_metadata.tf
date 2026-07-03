resource "dynatrace_metric_metadata" "Executions" {
  description        = "The total number of executions for this rule."
  display_name       = "Executions"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.rule.executions_count"
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
