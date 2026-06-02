resource "dynatrace_service_external_web_request" "DKI-External_web_requests_split_by_domain" {
  name         = "DKI - External web requests split by domain"
  enabled      = true
  insert_after = ""
  id_contributors {
    port_for_service_id = true
    application_id {
      enable_id_contributor = false
    }
    context_root {
      enable_id_contributor = false
    }
    public_domain_name {
      enable_id_contributor = true
      service_id_contributor {
        contribution_type     = "OriginalValue"
        # copy_from_host_name = false
      }
    }
  }
}
