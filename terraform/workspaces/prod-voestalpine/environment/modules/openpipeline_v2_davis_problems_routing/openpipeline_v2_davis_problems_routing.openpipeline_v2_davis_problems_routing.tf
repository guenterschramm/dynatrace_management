resource "dynatrace_openpipeline_v2_davis_problems_routing" "openpipeline_v2_davis_problems_routing" {
  routing_entries {
    routing_entry {
      description   = "PAM Problems"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PAM") or matchesValue(entity_tags,"Application:PAM") or matchesValue(frontend.name,"PAM*") or matchesValue(opl_security_context,"PAM*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQzMWY4NzMwNi00OWFkLTM3ZGMtYWZjMy0xMzliNjY3OWM3YTC-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Steel Problems"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_P") or matchesValue(entity_tags,"Application:xECM Steel") or matchesValue(opl_security_context,"xECM Steel*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQ5NjE2ODEyMS05N2I4LTNlN2ItYjBiYS1jOGE3NzNmYzEzYWK-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Corporate Problems"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_Corp") or matchesValue(entity_tags,"Application:xECM Corporate") or matchesValue(opl_security_context,"xECM Corporate*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQ3ZmY1NzM4Zi1kNGRlLTNiYzMtYjQ3ZC0yOTEwZDBlMTdlOTC-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Bee4IT Problems"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Bee4IT") or matchesValue(entity_tags,"Application:Bee4IT") or matchesValue(opl_security_context,"Bee4IT*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACRmNDFjY2M5ZS1mOGY5LTNhYjAtYWZjYi01ZmQ4MzE1ODM5Y2a-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Webhosting Problems"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Webhosting") or matchesValue(entity_tags,"Application:Webhosting*") or matchesValue(frontend.name,"Webhosting*") or matchesValue(opl_security_context,"Webhosting*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACRlZmUwOWQ4OC0xOGZlLTMxMGYtODc1ZC05NGE5Yjc1ZWYxYji-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PCD_PW_Portal Problems"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PCD_PW_Portal ") or matchesValue(entity_tags,"Application:PCD_Portal") or matchesValue(entity_tags,"Application:PW_Portal") or matchesValue(opl_security_context,"PCD_PW_Portal*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACRmNDY4OWRkNC03ZWE2LTNlNDQtOTUxNS02MzUwNTBkNTkyMTS-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Virtualization Problems"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(hypervisorType,"VMware") OR matchesValue(hypervisorType, "AWS Nitro") or matchesValue(entity_tags,"Application:Virtualization Services")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACRhY2IyNmZlNS0xYTVlLTM4YTctODZjNC0wOTk0OWViNDUxYmS-71TeFdrerQ"
      pipeline_type = "custom"
    }
  }
}
