resource "dynatrace_attack_rules" "_94e6ab64-7791-377f-a114-72d0a4492929" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADBidWlsdGluOmFwcHNlYy5hdHRhY2stcHJvdGVjdGlvbi1hZHZhbmNlZC1jb25maWcABnRlbmFudAAGdGVuYW50ACRkM2M2ZTI4Zi0wNTllLTNkOTQtYTFjMy05YjM2NDdiZDNmNjK-71TeFdrerQ"
  rule_name    = "PAM Test"
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
      resource_attribute_value = "PAM_Test"
    }
  }
}
