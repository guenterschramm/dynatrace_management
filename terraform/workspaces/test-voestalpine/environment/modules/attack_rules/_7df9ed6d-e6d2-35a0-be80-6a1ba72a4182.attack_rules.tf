resource "dynatrace_attack_rules" "_7df9ed6d-e6d2-35a0-be80-6a1ba72a4182" {
  enabled      = false
  insert_after = ""
  rule_name    = "Nedcon POC"
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
      resource_attribute_value = "nedcon"
    }
  }
}
