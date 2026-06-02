resource "dynatrace_openpipeline_v2_davis_events_routing" "openpipeline_v2_davis_events_routing" {
  routing_entries {
    routing_entry {
      description   = "PAM Events"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PAM") or matchesValue(entity_tags,"Application:PAM") or matchesValue(frontend.name,"PAM*")  or matchesValue(opl_security_context,"PAM*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkOWJlY2U2OTEtZDEyZi0zYjg2LTk5ZWItZWI5OTAzYWQwNmFivu9U3hXa3q0"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Steel Events"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_P") or matchesValue(entity_tags,"Application:xECM Steel")  or matchesValue(opl_security_context,"xECM Steel*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkNjA0NjMxYTEtODUwYS0zZTIwLTgxYTctZDcxYzI4YTBlMDNkvu9U3hXa3q0"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "xECM Corporate Events"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"xECM_Corp") or matchesValue(entity_tags,"Application:xECM Corporate") or matchesValue(opl_security_context,"xECM Corporate*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkNTA2ZjI5NWQtYTViZi0zNjkzLWFlYzYtMzkxY2VhNDMzZmVkvu9U3hXa3q0"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Bee4IT Events"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Bee4IT") or matchesValue(entity_tags,"Application:Bee4IT")  or matchesValue(opl_security_context,"Bee4IT*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkYjU4NDA2ZTQtMjcxOS0zOTk1LTkxMDktOGE1YTljNTYwNWVhvu9U3hXa3q0"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Webhosting Events"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"Webhosting") or matchesValue(entity_tags,"Application:Webhosting*") or matchesValue(frontend.name,"Webhosting*") or matchesValue(opl_security_context,"Webhosting*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkOGQ5MmM0MDYtZTczYi0zZmFhLTljZGMtYjA3MDkwZDUxNjVlvu9U3hXa3q0"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "PCD_PW_Portal Events"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(dt.host_group.id,"PCD_PW_Portal") or matchesValue(entity_tags,"Application:PCD_Portal") or matchesValue(entity_tags,"Application:PW_Portal") or matchesValue(opl_security_context,"PCD_PW_Portal*")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkZDY1MmJhNTQtYTMxOC0zODM0LTg0ZTgtNzBhM2M5YjE1NGY5vu9U3hXa3q0"
      pipeline_type = "custom"
    }
    routing_entry {
      description   = "Virtualization Events"
      enabled       = true
      matcher       =<<-EOT
        matchesValue(hypervisorType,"VMware") OR matchesValue(hypervisorType, "AWS Nitro")  or matchesValue(entity_tags,"Application:Virtualization Services")
      EOT
      pipeline_id   = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkMTc4ODEyZWEtNGZiYS0zYzI0LThmNjQtM2QzNTdkMTQ3YTZlvu9U3hXa3q0"
      pipeline_type = "custom"
    }
  }
}
