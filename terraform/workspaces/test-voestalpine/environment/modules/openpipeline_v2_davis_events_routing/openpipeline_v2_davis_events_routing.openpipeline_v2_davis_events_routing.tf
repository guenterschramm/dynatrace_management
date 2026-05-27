resource "dynatrace_openpipeline_v2_davis_events_routing" "openpipeline_v2_davis_events_routing" {
  routing_entries {
    routing_entry {
      description   = "HPM_VMES"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.security_context,"HPM_VMES_Test") or matchesValue(dt.security_context,"2217-u407008-metar")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkNmJjOTk2OTAtODE4Ni0zY2FiLTg5YTUtMTlkYzNiYTVkZDBhvu9U3hXa3q0"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "TPI Messaging"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"TPI_Messaging") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/logs") and matchesValue(dt.security_context,"TPI_Messaging")) or matchesValue(dt.security_context,"TPI_Messaging")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkY2ZkNTM1Y2QtNThmOS0zY2MyLWJkOTQtMmI1NDAzNjI0M2Zkvu9U3hXa3q0"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Guenter_Local"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"guenter_tomcat") or (matchesValue(dt.openpipeline.source,"/api/v2/otlp/v1/logs") and matchesValue(dt.security_context,"guenter_tomcat")) or matchesValue(dt.security_context,"guenter_tomcat")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkZjUyNTdjNTgtNWU3OC0zMzU5LTgyNGItMzcwM2FjMTFiMWNlvu9U3hXa3q0"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Nedcon POC"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"nedcon") or matchesValue(dt.security_context,"Nedcon_POC")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkNWUyMzAzZDUtZDlmZi0zZWM3LTk3MjctZDU1ZDkzNDRmMzJivu9U3hXa3q0"
      pipeline_type = "custom"
    }
  }
}
