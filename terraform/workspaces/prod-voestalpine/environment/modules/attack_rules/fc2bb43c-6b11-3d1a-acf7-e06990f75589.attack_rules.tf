resource "dynatrace_attack_rules" "fc2bb43c-6b11-3d1a-acf7-e06990f75589" {
  enabled      = false
  insert_after = "vu9U3hXa3q0AAAABADBidWlsdGluOmFwcHNlYy5hdHRhY2stcHJvdGVjdGlvbi1hZHZhbmNlZC1jb25maWcABnRlbmFudAAGdGVuYW50ACRhY2U0MjM3My1jZTBjLTNiZGMtYmU4YS02ZDBlNzRlNDExMmW-71TeFdrerQ"
  rule_name    = "Webhosting"
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
      resource_attribute_value = "Webhosting"
    }
  }
}
