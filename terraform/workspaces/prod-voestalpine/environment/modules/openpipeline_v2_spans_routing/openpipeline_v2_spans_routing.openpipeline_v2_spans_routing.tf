resource "dynatrace_openpipeline_v2_spans_routing" "openpipeline_v2_spans_routing" {
  routing_entries {
    routing_entry {
      description   = "Webhosting Service"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Webhosting") or matchesValue(entity_tags,"Application:Webhosting*") or matchesValue(frontend.name,"Webhosting*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQzYzM5Mjg4Ny03YTc0LTMzMjUtYjYxNi1kMzFlMzgyMzhiYjm-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PAM"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PAM") or matchesValue(entity_tags,"Application:PAM") or matchesValue(frontend.name,"PAM")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQwMGJjZTBmZS1kOTYzLTNmZTItOGU2NC1kMzMxNDgzNmI1ZGK-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Bee4IT"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Bee4IT") or matchesValue(entity_tags,"Application:Bee4IT") or matchesValue(dt.cost.costcenter,"*bee4it") or matchesValue(frontend.name,"Bee4IT")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACRmZDZmN2JkNi04OWI1LTMwYjktYjYzMS1jZWFjNzVlNmE5NDK-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Corporate"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_Corp") or matchesValue(entity_tags,"Application:xECM Corporate") or matchesValue(dt.cost.costcenter,"*xecm_corp") or matchesValue(frontend.name,"xECM_Corporate")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQ3ODVhZTBmZi1lNzdlLTMxYWEtYTFlOS02ODczOGI4ZmMzM2a-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Steel"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_P") or matchesValue(entity_tags,"Application:xECM Steel") or matchesValue(dt.cost.costcenter,"*xecm_steel") or matchesValue(frontend.name,"xECM_Steel")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQzZTdjZWUxMS1kMTFlLTMwMmMtODM3OS03MzU0MjlkMmZlNGK-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PCD_PW_Portal"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PCD_PW_Portal") or matchesValue(entity_tags,"Application:PCD_Portal") or matchesValue(entity_tags,"Application:PW_Portal") or matchesValue(frontend.name,"PW_Portal") or matchesValue(frontend.name,"PCD_Portal")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQ3MGI2N2ZkZS1jYWQ1LTMwODMtYTBmZi1kMTE3OGExMmU5Zji-71TeFdrerQ"
      pipeline_type = "custom"
    }
  }
}
