resource "dynatrace_attack_rules" "ace42373-ce0c-3bdc-be8a-6d0e74e4112e" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADBidWlsdGluOmFwcHNlYy5hdHRhY2stcHJvdGVjdGlvbi1hZHZhbmNlZC1jb25maWcABnRlbmFudAAGdGVuYW50ACQ4MDQ3YjIwMC1jMzkwLTMwM2EtOGY3Yi1iMTNjNzkwYWQ0ZWG-71TeFdrerQ"
  rule_name    = "PCD_PW_Portal"
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
      resource_attribute_value = "PCD_PW_Portal"
    }
  }
}
