resource "dynatrace_attribute_allow_list" "mongodb_command" {
  enabled = true
  key     = "mongodb.command"
}
