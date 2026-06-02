resource "dynatrace_custom_service" "KSCReorderService" {
  name                = "KSCReorderService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.ksc.reorder.DefaultKSCReorderService"
      match = "EQUALS"
    }
    method {
      name       = "createFolgeBestellung"
      arguments  = [ "com.voestalpine.dki.reorder.domain.CreateFolgeBestellungDto" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "createROLBestellung"
      arguments  = [ "com.voestalpine.dki.reorder.domain.CreateROLBestellungDto" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getMengenUebersicht"
      arguments  = [ "com.voestalpine.dki.reorder.domain.GetMengenUebersicht" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getReorderOverviewUrl"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getRolCockpit"
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getRolCockpit"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getRolCockpit"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getRolCockpit"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
