resource "dynatrace_generic_relationships" "extensions_configuration_INSTANCE_OF_extensions_extension" {
  enabled          = true
  created_by       = "com.dynatrace.extension.extensions-health 1.2.6"
  from_type        = "extensions:configuration"
  to_type          = "extensions:extension"
  type_of_relation = "INSTANCE_OF"
  sources {
    source {
      condition   = "$prefix(dsfm:extension)"
      source_type = "Metrics"
    }
  }
}
