resource "dynatrace_custom_service" "IllVersandstatusApi" {
  name                = "IllVersandstatusApi"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.restservices.controller.IllVersandstatusApi"
      match = "EQUALS"
    }
    method {
      name       = "createVersandstatus"
      arguments  = [ "com.voestalpine.restservices.domain.IllVersandstatusRequest", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandstatusByPartner"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandstatusByPartnerAndReceiver"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
