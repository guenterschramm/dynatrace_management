resource "dynatrace_openpipeline_v2_metrics_routing" "openpipeline_v2_metrics_routing" {
  routing_entries {
    routing_entry {
      description   = "TPI Messaging"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id, "TPI_Messaging") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/metrics") and matchesValue(dt.security_context,"TPI_Messaging")) or matchesValue(dt.security_context, "TPI_Messaging") or matchesValue(opl.security_context,"TPI_Messaging")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDEwNjIwYjEzLWIzZGQtMzMwNi04YjQwLTJiZWE0ZDg0ZWMyM77vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "HPM_VMES_Test"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(k8s.namespace.name,"2217-u407008-metar") or matchesValue(dt.security_context,"2217-u407008-metar") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/metrics") and matchesValue(dt.security_context,"HPM_VMES_Test")) or matchesValue(dt.security_context,"HPM_VMES_Test") or matchesValue(opl.security_context,"HPM_VMES_Test")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGZhYmJjNGMwLWVjOTgtM2E1YS05MmE4LTMxYWJkYzRiMDU1ZL7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Guenter_Local"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id, "guenter_tomcat") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/metrics") and matchesValue(dt.security_context,"guenter_tomcat")) or matchesValue(dt.security_context, "guenter_tomcat") or matchesValue(opl.security_context,"guenter_tomcat")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGZlYmNiNzUwLTJkNDMtMzVjMS1iYTNiLTZhMjhhYWU1YmE1NL7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Nedcon POC"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id, "nedcon") or matchesValue(dt.security_context,"Nedcon_POC") or matchesValue(opl.security_context,"Nedcon_POC")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDljMmNmNzE5LTMxZmMtMzdkZS04NDNhLTQ4MTYxOTlkOGU2Ob7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Network POC"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.security_context,"network") or matchesValue(opl.security_context,"network")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDNiOWI3YTdlLTAxMjctM2M0MC05ZTA1LTYxOGNjYzRjNjU5Zr7vVN4V2t6t"
      pipeline_type = "custom"
    }
  }
}
