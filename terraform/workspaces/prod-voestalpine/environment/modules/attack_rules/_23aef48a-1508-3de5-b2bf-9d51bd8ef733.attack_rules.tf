resource "dynatrace_attack_rules" "_23aef48a-1508-3de5-b2bf-9d51bd8ef733" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADBidWlsdGluOmFwcHNlYy5hdHRhY2stcHJvdGVjdGlvbi1hZHZhbmNlZC1jb25maWcABnRlbmFudAAGdGVuYW50ACRmYzJiYjQzYy02YjExLTNkMWEtYWNmNy1lMDY5OTBmNzU1ODm-71TeFdrerQ"
  rule_name    = "xECM Corporate"
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
      resource_attribute_value = "xECM_Corp"
    }
  }
}
