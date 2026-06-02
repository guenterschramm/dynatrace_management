resource "dynatrace_custom_service" "OrderProcessingService" {
  name                = "OrderProcessingService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.order.DefaultOrderProcessingService"
      match = "EQUALS"
    }
    method {
      name       = "processAuftrag"
      arguments  = [ "com.voestalpine.legacybridge.domain.Auftrag" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processCertificateData"
      arguments  = [ "com.voestalpine.legacybridge.domain.CertificateData" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processDeletedDeliveryNotes"
      arguments  = [ "com.voestalpine.legacybridge.domain.DeliveryNote" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processDeliveryNotes"
      arguments  = [ "reactor.core.publisher.Flux", "boolean" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "processFactoryCertificate"
      arguments  = [ "com.voestalpine.legacybridge.domain.FactoryCertificate" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processFrachtAuftraege"
      arguments  = [ "com.voestalpine.legacybridge.domain.Frachtauftraege" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processInvoices"
      arguments  = [ "reactor.core.publisher.Flux" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "processPlanzugangs"
      arguments  = [ "reactor.core.publisher.Flux" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "processProductionNetworkDeadlines"
      arguments  = [ "reactor.core.publisher.Flux" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
  }
}
