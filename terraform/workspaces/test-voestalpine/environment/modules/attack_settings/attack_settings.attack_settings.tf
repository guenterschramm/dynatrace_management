resource "dynatrace_attack_settings" "attack_settings" {
  enabled = false
  default_attack_handling {
    blocking_strategy_dot_net = "MONITOR"
    blocking_strategy_go      = "OFF"
    blocking_strategy_java    = "MONITOR"
  }
}
