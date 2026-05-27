resource "dynatrace_openpipeline_v2_davis_problems_routing" "openpipeline_v2_davis_problems_routing" {
  routing_entries {
    routing_entry {
      description   = "HPM_VMES"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.security_context,"HPM_VMES_Test") or matchesValue(dt.security_context,"2217-u407008-metar")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQ4MWM5ZWMwOC1kZjk3LTNhZDQtODRkYS1kYTVjM2IyNWMxMDO-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "TPI Messaging"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"TPI_Messaging") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/logs") and matchesValue(dt.security_context,"TPI_Messaging")) or matchesValue(dt.security_context,"TPI_Messaging")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQwNDE2N2ZlZC0wYTY4LTM3ZDMtODllZi0wYTU2ZGMyOWE1NWG-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Guenter_Local"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"guenter_tomcat") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/logs") and matchesValue(dt.security_context,"guenter_tomcat")) or matchesValue(dt.security_context,"guenter_tomcat")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQxYjExMTVjZi1mZTg2LTM5NjUtOWEyNS1jMDM2OGJiOGZlZDC-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Nedcon POC"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"nedcon") or matchesValue(dt.security_context,"Nedcon_POC")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABAC1idWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5wcm9ibGVtcy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACRlNTJkNTUxMS1lOTIyLTNkMjItOTMwOC1kNzY5MmVlZjgwYWW-71TeFdrerQ"
      pipeline_type = "custom"
    }
  }
}
