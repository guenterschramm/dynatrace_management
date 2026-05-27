resource "dynatrace_davis_copilot" "environment" {
  # enable_agentic_ai             = false
  enable_copilot                  = true
  enable_document_suggestion      = true
  enable_tenant_aware_data_mining = true
}
