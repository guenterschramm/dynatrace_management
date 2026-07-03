resource "dynatrace_metric_metadata" "Executions_1" {
  description        = "The total number of event executions for the specified rule."
  display_name       = "Executions"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.rule.event.stat.total.executions.count"
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
}
