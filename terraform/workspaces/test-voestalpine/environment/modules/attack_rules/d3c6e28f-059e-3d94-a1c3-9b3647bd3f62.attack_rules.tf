resource "dynatrace_attack_rules" "d3c6e28f-059e-3d94-a1c3-9b3647bd3f62" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADBidWlsdGluOmFwcHNlYy5hdHRhY2stcHJvdGVjdGlvbi1hZHZhbmNlZC1jb25maWcABnRlbmFudAAGdGVuYW50ACQ3ZGY5ZWQ2ZC1lNmQyLTM1YTAtYmU4MC02YTFiYTcyYTQxODK-71TeFdrerQ"
  rule_name    = "xECM_Corp_Q"
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
      resource_attribute_value = "xECM_Corp_Q"
    }
  }
}
