resource "dynatrace_custom_service" "PDSService" {
  name                = "PDSService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.pds.DefaultPDSService"
      match = "EQUALS"
    }
    method {
      name       = "getDocumentUrl"
      arguments  = [ "com.voestalpine.dki.pds.PDSService$GETDocumentUrl" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processGnorm"
      arguments  = [ "com.voestalpine.legacybridge.domain.Gnorm" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processLimitCurve"
      arguments  = [ "com.voestalpine.legacybridge.domain.LimitCurve" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processNormstahlsorte"
      arguments  = [ "com.voestalpine.legacybridge.domain.Normstahlsorte" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processStahlsorte"
      arguments  = [ "com.voestalpine.legacybridge.domain.Stahlsorte" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processWerksmarke"
      arguments  = [ "com.voestalpine.legacybridge.domain.Werksmarke" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
