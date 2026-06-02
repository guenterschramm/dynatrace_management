resource "dynatrace_attack_rules" "_8047b200-c390-303a-8f7b-b13c790ad4ea" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADBidWlsdGluOmFwcHNlYy5hdHRhY2stcHJvdGVjdGlvbi1hZHZhbmNlZC1jb25maWcABnRlbmFudAAGdGVuYW50ACQxMTllZDA5Yy0yZjNjLTNhMzAtYTZiMC1lM2I2YzM3NDlmNjK-71TeFdrerQ"
  rule_name    = "PAM"
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
      matcher                  = "STARTS_WITH"
      resource_attribute_key   = "host.name"
      resource_attribute_value = "2217pvwa0469p"
    }
    resource_attribute_condition {
      matcher                  = "EQUALS"
      resource_attribute_key   = "dt.host_group.id"
      resource_attribute_value = "PAM"
    }
  }
}
