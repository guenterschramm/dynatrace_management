resource "dynatrace_openpipeline_v2_user_events_routing" "openpipeline_v2_user_events_routing" {
  routing_entries {
    routing_entry {
      description   = "Webhosting Service"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Webhosting") or matchesValue(entity_tags,"Application:Webhosting*") or matchesValue(frontend.name,"Webhosting*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACpidWlsdGluOm9wZW5waXBlbGluZS51c2VyLmV2ZW50cy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQxZDc0NDFlNy04YzI1LTMyZWMtOTU0Zi01N2JmNzE4Y2ZiYTm-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PAM"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PAM") or matchesValue(entity_tags,"Application:PAM*") or matchesValue(frontend.name,"PAM*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACpidWlsdGluOm9wZW5waXBlbGluZS51c2VyLmV2ZW50cy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQ3ZGEyZWUzMi1lNWViLTMyYmMtYTIyNi1kNTMyOGVlNjFiYzm-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PCD_PW_Portal"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PCD_PW_Portal ") or matchesValue(entity_tags,"Application:PCD_Portal") or matchesValue(entity_tags,"Application:PW_Portal") or matchesValue(frontend.name,"PCD_Portal") or matchesValue(frontend.name,"PW_Portal")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACpidWlsdGluOm9wZW5waXBlbGluZS51c2VyLmV2ZW50cy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQ0YTUyNjFlZC0zMTk1LTMxMDctODEwNC04MDc3MzYzMTIxNWG-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Bee4IT"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Bee4IT") or matchesValue(entity_tags,"Application:Bee4IT") or matchesValue(frontend.name,"Bee4IT*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACpidWlsdGluOm9wZW5waXBlbGluZS51c2VyLmV2ZW50cy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACRjMWZlOTYyOS01ZGQ4LTM3MzctOTI5Zi03NDViMTkyZTc4ZGG-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Corporate"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_Corp") or matchesValue(entity_tags,"Application:xECM Corporate") or matchesValue(frontend.name,"xECM_Corporate*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACpidWlsdGluOm9wZW5waXBlbGluZS51c2VyLmV2ZW50cy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQ4MDZlZmY0Mi1iMWUyLTM2ZDUtYWQwMy1iNjhjNzEyNjZmMje-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Steel"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_P") or matchesValue(entity_tags,"Application:xECM Steel") or matchesValue(frontend.name,"xECM_Steel")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACpidWlsdGluOm9wZW5waXBlbGluZS51c2VyLmV2ZW50cy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACRiODAzNWM5Ny03ZWM5LTMwNWMtODJmZi01NDE4Y2YyNDgzYze-71TeFdrerQ"
      pipeline_type = "custom"
    }
  }
}
