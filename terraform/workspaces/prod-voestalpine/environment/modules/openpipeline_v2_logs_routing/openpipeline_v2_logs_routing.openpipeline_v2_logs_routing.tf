resource "dynatrace_openpipeline_v2_logs_routing" "openpipeline_v2_logs_routing" {
  routing_entries {
    routing_entry {
      description   = "PAM"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PAM") or matchesValue(entity_tags,"Application:PAM") or matchesValue(frontend.name,"PAM")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGI5MjE2NWY4LTRhMTUtM2Y5Ny1hM2E0LTZkOGYwZDY0NTZmNr7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Bee4IT"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Bee4IT") or matchesValue(entity_tags,"Application:Bee4IT") or matchesValue(dt.cost.costcenter,"*bee4it") or matchesValue(frontend.name,"Bee4IT")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDQ1NjM5OTliLWI5ZGEtM2Q2Ni05OTY1LWE4ZGVjNzBkYmMzOL7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Webhosting Service"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Webhosting") or matchesValue(entity_tags,"Application:Webhosting*") or matchesValue(frontend.name,"Webhosting*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDQyMTE2NmE4LTlkZWEtMzdmOC04ZTkzLTBlZjdmYjJlZGNkNr7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Steel"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_P") or matchesValue(entity_tags,"Application:xECM Steel") or matchesValue(dt.cost.costcenter,"*xecm_steel") or matchesValue(frontend.name,"xECM_Steel")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDg4NjEwZjcwLTdlZWYtMzVlZS1hNTMxLTMyZTE5MzMwNTM1Yr7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Corporate"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_Corp") or matchesValue(entity_tags,"Application:xECM Corporate") or matchesValue(dt.cost.costcenter,"*xecm_corp") or matchesValue(frontend.name,"xECM_Corporate")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDM0MTdiZDZmLWU2ZWQtMzM4ZS04ZDhjLWQyNWIyMTAwOWJkOb7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PCD_PW_Portal"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PCD_PW_Portal") or matchesValue(entity_tags,"Application:PCD_Portal") or matchesValue(entity_tags,"Application:PW_Portal") or matchesValue(frontend.name,"PW_Portal") or matchesValue(frontend.name,"PCD_Portal")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGJjYzIyOTA4LTY2OGItM2YyYS1iYTA1LTVjZmI4N2I3YmZmM77vVN4V2t6t"
      pipeline_type = "custom"
    }
  }
}
