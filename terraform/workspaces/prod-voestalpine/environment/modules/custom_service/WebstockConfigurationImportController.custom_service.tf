resource "dynatrace_custom_service" "WebstockConfigurationImportController" {
  name                = "WebstockConfigurationImportController"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.dvk.webstock.controller.WebstockConfigurationImportController"
      match = "EQUALS"
    }
    method {
      name       = "importArticlePrices"
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "importCustomerImpact"
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "importFreightCosts"
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "importFreightCostsWideLoad"
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "importWebstockConfig"
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
