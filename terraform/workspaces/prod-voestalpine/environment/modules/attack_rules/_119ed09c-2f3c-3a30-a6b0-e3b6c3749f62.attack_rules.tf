resource "dynatrace_attack_rules" "_119ed09c-2f3c-3a30-a6b0-e3b6c3749f62" {
  enabled      = false
  insert_after = ""
  rule_name    = "Bee4IT"
  attack_handling {
    blocking_strategy = "MONITOR"
  }
  criteria {
    attack_type = "ANY"
  }
  metadata {
    comment = ""
  }
  resource_attribute_conditions {
    resource_attribute_condition {
      matcher                  = "EQUALS"
      resource_attribute_key   = "dt.host_group.id"
      resource_attribute_value = "Bee4IT"
    }
  }
}
