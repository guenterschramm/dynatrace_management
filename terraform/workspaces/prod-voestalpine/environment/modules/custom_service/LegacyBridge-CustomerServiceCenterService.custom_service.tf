resource "dynatrace_custom_service" "LegacyBridge-CustomerServiceCenterService" {
  name                = "LegacyBridge - CustomerServiceCenterService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.legacybridge.ksc.CustomerServiceCenterService"
      match = "EQUALS"
    }
    method {
      name       = "addAuftrag"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addCertificateData"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addClaim"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addClaims"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addDeliveryNotes"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addEmployees"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addFactoryCertificate"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addFrachtauftrag"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addIllVersandstatus"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addInvoices"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addLacksystemKennzahl"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addLacksystemKundenzuordnung"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleAuftraege"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleDeliveryNotes"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleEmployees"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleFactoryCertificates"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleIllVersandstatus"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleInvoices"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleLacksystemKennzahl"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleLacksystemKundenzuordnung"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultiplePartners"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultiplePlanzugang"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleProductionNetworkDeadlines"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleRolSachnummer"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleRolZuordnung"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addPartner"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addPlanproduktKundenzuordnung"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addPlanzugang"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addProductionNetworkDeadlines"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addRolSachnummer"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addRolZuordnung"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addZvsVorschaumengen"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "deleteDeliveryNotes"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
