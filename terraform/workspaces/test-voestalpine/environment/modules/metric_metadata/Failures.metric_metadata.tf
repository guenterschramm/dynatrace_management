resource "dynatrace_metric_metadata" "Failures" {
  description        = "The number of failures for executing the specified rule."
  display_name       = "Failures"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.rule.event.stat.failures.count"
  source_entity_type = "f5:rule"
  tags               = [ "F5", "Rule" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Rule name"
      key          = "rule.name"
    }
    dimension {
      display_name = "Event type"
      key          = "rule.event.type"
    }
    dimension {
      display_name = "Event priority"
      key          = "rule.event.priority"
    }
  }
  metric_properties {
    min_value           = 0
    root_cause_relevant = true
    value_type          = "error"
  }
}
