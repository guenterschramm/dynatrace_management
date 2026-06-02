resource "dynatrace_custom_service" "ReorderService" {
  name                = "ReorderService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.reorder.DefaultReorderService"
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
      name       = "getROLCockpit"
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getReorderOverviewUrl"
      arguments  = [ "com.voestalpine.dki.reorder.ReorderService$GetDocumentUrl" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getReorderTemplate"
      arguments  = [ "com.voestalpine.dki.reorder.domain.GetReorderTemplate" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processLackSystemKennzahl"
      arguments  = [ "com.voestalpine.legacybridge.domain.LacksystemKennzahl" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processLackSystemKundenzuordnung"
      arguments  = [ "com.voestalpine.legacybridge.domain.LacksystemKundenzuordnung" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processLacksystemKennzahl"
      arguments  = [ "com.voestalpine.legacybridge.domain.LacksystemKennzahl" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processLacksystemKundenzuordnung"
      arguments  = [ "com.voestalpine.legacybridge.domain.LacksystemKundenzuordnung" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processPlanProduktKundenZuordnung"
      arguments  = [ "com.voestalpine.legacybridge.domain.PlanproduktKundenzuordnung" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processROLSachnummern"
      arguments  = [ "com.voestalpine.legacybridge.domain.RolSachnummern" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processROLZuordnungen"
      arguments  = [ "com.voestalpine.legacybridge.domain.RolZuordnungen" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processReorder"
      arguments  = [ "com.voestalpine.dki.reorder.domain.ProcessReorder" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processReorderTemplate"
      arguments  = [ "com.voestalpine.dki.reorder.domain.ProcessReorderTemplate" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processVorschaumengen"
      arguments  = [ "com.voestalpine.legacybridge.domain.Vorschaumengen" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
