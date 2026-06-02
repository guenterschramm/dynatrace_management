resource "dynatrace_attack_rules" "_6b11f0be-cfd5-3fc3-ac5e-9e402daef1d3" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADBidWlsdGluOmFwcHNlYy5hdHRhY2stcHJvdGVjdGlvbi1hZHZhbmNlZC1jb25maWcABnRlbmFudAAGdGVuYW50ACQyM2FlZjQ4YS0xNTA4LTNkZTUtYjJiZi05ZDUxYmQ4ZWY3MzO-71TeFdrerQ"
  rule_name    = "xECM Steel"
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
      resource_attribute_value = "xECM_P"
    }
  }
}
