resource "dynatrace_openpipeline_v2_spans_routing" "openpipeline_v2_spans_routing" {
  routing_entries {
    routing_entry {
      description   = "HPM_VMES"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/traces") and (matchesValue(dt.security_context,"HPM_VMES_Test") or matchesValue(dt.security_context,"2217-u407008-metar")) or matchesValue(dt.security_context,"HPM_VMES_Test")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACRkNzdiMjEyOS04MzZlLTMwZWEtYmY4YS0xOTUwNWZmNTZmNWO-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "TPI Messaging"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"TPI_Messaging") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/traces") and matchesValue(dt.security_context,"TPI_Messaging")) or matchesValue(dt.security_context,"TPI_Messaging")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQzZmNjZWY5Yi1hMmE4LTNiNGEtYmM2NC1mM2M1MGYyN2E1NjO-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Guenter_Local"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"guenter_tomcat") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/traces") and matchesValue(dt.security_context,"guenter_tomcat")) or matchesValue(dt.security_context,"guenter_tomcat")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQxMGRiOGJkNi00MDg2LTM2M2ItODczYS1mOWU0OTNkODllZjO-71TeFdrerQ"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Nedcon POC"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"nedcon") or matchesValue(dt.security_context,"Nedcon_POC")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACRidWlsdGluOm9wZW5waXBlbGluZS5zcGFucy5waXBlbGluZXMABnRlbmFudAAGdGVuYW50ACQ4N2M5ZjE1OS1hMTk1LTMxNDMtYWIyYy0zYTQwYjQ5OGM1NGO-71TeFdrerQ"
      pipeline_type = "custom"
    }
  }
}
