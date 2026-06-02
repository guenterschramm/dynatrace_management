resource "dynatrace_custom_service" "LegacyBridge-PublisherService" {
  name                = "LegacyBridge - PublisherService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.legacybridge.publisher.PublisherService"
      match = "EQUALS"
    }
    method {
      name       = "publishAuftrag"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Auftrag" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishCertificateData"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.CertificateData" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishClaim"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Claim" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishDeletedDeliveryNote"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.DeliveryNote" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishDeliveryNote"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.DeliveryNote" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishEmployee"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Employee" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishFactoryCertificate"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.FactoryCertificate" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishFrachtauftraege"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Frachtauftraege" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishGnorm"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Gnorm" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishInvoices"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Invoice" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishLacksystemKennzahl"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.LacksystemKennzahl" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishLacksystemKundenzuordnung"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.LacksystemKundenzuordnung" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishLimitCurve"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.LimitCurve" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishNetworkDeadline"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.ProductionNetworkDeadline" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishNormstahlsorte"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Normstahlsorte" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishParameter"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Parameter" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishPartner"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Partner" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishPartnerTransportTypeDurations"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.PartnerTransportTypeDurations" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishPlanproduktKundenzuordnung"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.PlanproduktKundenzuordnung" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishPlanzugang"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.PlanzugangAuftragsposition" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishRolSachnummer"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.RolSachnummern" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishRolZuordnungen"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.RolZuordnungen" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishStahlsorte"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Stahlsorte" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishVersandabruf"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Versandabruf" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishVersandstatus"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.IllVersandstatus" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishWerksmarke"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Werksmarke" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishZvsVorschaumengen"
      arguments  = [ "com.voestalpine.legacybridge.api.domain.Vorschaumengen" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
