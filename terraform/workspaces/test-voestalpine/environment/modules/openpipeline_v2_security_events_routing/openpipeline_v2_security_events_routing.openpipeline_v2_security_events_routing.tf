resource "dynatrace_openpipeline_v2_security_events_routing" "openpipeline_v2_security_events_routing" {
  routing_entries {
    routing_entry {
      description   = "Nedcon POC"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"nedcon") or  matchesValue(dt.security_context,"Nedcon_POC")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC5idWlsdGluOm9wZW5waXBlbGluZS5zZWN1cml0eS5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkZWFkMGJmYWItMTk0Ny0zNjc4LTgyMTYtYmI4ZGI3M2U4ZDg4vu9U3hXa3q0"
      pipeline_type = "custom"
    }
  }
}
