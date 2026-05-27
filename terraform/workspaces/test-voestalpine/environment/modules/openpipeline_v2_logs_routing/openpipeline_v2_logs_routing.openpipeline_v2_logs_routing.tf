resource "dynatrace_openpipeline_v2_logs_routing" "openpipeline_v2_logs_routing" {
  routing_entries {
    routing_entry {
      description   = "PAM"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PAM") or matchesValue(entity_tags,"Application:PAM")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDBmN2Y3ZmY4LTgzMzAtMzE2ZC1hMGE3LWM0YTZiYzJmMDkzMr7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "HPM_VMES"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/logs") and (matchesValue(dt.security_context,"HPM_VMES_Test") or matchesValue(dt.security_context,"2217-u407008-metar"))
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDBlNDNmNWNhLTA4NzItM2M2ZC04NWZjLWJmYmU3OGFjNGFkYb7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "TPI Messaging"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"TPI_Messaging") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/logs") and matchesValue(dt.security_context,"TPI_Messaging")) or matchesValue(dt.security_context,"TPI_Messaging")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDA5MGRiODlhLWMwNTctMzJiNC1iNjMxLWZmNjlhYzJkYmM0Zb7vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Guenter_Local"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"guenter_tomcat") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/logs") and matchesValue(dt.security_context,"guenter_tomcat")) or matchesValue(dt.security_context,"guenter_tomcat")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDVmY2RlYjNmLWFlYzItM2Q2Ni05ZGU2LTgzYzg0MzY3YzJlY77vVN4V2t6t"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Nedcon POC"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"nedcon") or  matchesValue(dt.security_context,"Nedcon_POC")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGY2NmNmYjc0LWFiZWYtMzRhNC1hYjIzLTA5NTE0N2Q4ZjBhML7vVN4V2t6t"
      pipeline_type = "custom"
    }
  }
}
