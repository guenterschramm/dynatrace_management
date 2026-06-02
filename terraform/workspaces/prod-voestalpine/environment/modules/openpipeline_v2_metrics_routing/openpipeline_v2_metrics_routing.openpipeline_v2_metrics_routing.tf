resource "dynatrace_openpipeline_v2_metrics_routing" "openpipeline_v2_metrics_routing" {
  routing_entries {
    routing_entry {
      description   = "PAM"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PAM") or matchesValue(entity_tags,"Application:PAM") or matchesValue(frontend.name,"PAM*") or matchesValue(opl_security_context,"PAM*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGZjZDNlYTYyLWFhZDktM2NmNC04N2QxLWM1YjliNjY3OGI5Yb7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Bee4IT"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Bee4IT") or matchesValue(entity_tags,"Application:Bee4IT") or matchesValue(dt.cost.costcenter,"*bee4it") or matchesValue(frontend.name,"Bee4IT*") or matchesValue(opl_security_context,"Bee4IT*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGM0OTBhNDQxLWQ2ZGEtM2Y1MC1iMTc1LWIyMDQwNTFkOTA1ML7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Webhosting Service"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Webhosting") or matchesValue(entity_tags,"Application:Webhosting*") or matchesValue(frontend.name,"Webhosting*") or matchesValue(opl_security_context,"Webhosting*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDM1MjRmMmI0LTNjNzMtM2NjZS1iODYzLWRkOTE3ZGRjNjVmY77vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Steel"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_P") or matchesValue(entity_tags,"Application:xECM Steel") or matchesValue(dt.cost.costcenter,"*xecm_steel") or matchesValue(dt.security_context,"xECM Steel") or matchesValue(frontend.name, "xECM_Steel*") or matchesValue(opl_security_context,"xECM Steel*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGMzMWQwYTU2LTU0ZWEtM2QxMi1hNGRlLTlkYzA2ZDIwNWZhOL7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Corporate"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_Corp") or matchesValue(entity_tags,"Application:xECM Corporate") or matchesValue(dt.cost.costcenter,"*xecm_corp") or matchesValue(frontend.name,"xECM_Corporate*") or matchesValue(opl_security_context,"xECM Corporate*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDU1NDljNDI2LTUwMGMtMzEyNi04NmFiLTlmMWNiMjk5MWZkNb7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PCD_PW_Portal"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PCD_PW_Portal") or matchesValue(entity_tags,"Application:PCD_Portal") or matchesValue(entity_tags,"Application:PW_Portal") or matchesValue(frontend.name,"PCD_Portal*")  or matchesValue(frontend.name,"PW_Portal*") or matchesValue(opl_security_context,"PCD_PW_Portal*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDE3YWE1NTQ4LWYxMDgtM2MwNS1iMmY5LTk5YmQ2NWJiYWZiMb7vVN4V2t6t"
      pipeline_type = "custom"
    }
  }
}
