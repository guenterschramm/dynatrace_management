resource "dynatrace_custom_service" "KSCPartnerService" {
  name                = "KSCPartnerService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.ksc.partner.DefaultKSCPartnerService"
      match = "EQUALS"
    }
    method {
      name       = "computePartnerDataSetContext"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "hasPartnerDataSetContext"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
