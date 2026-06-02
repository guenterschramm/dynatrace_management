resource "dynatrace_custom_service" "VersandAbrufIllController" {
  name                = "VersandAbrufIllController"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.order.controller.VersandAbrufIllController"
      match = "EQUALS"
    }
    method {
      name       = "getVersandAbrufAuftraege"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufAuftraege"
      arguments  = [ "java.util.List" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufAuftrag"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufGesamtUebersichten"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufMaterial"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufMaterials"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufMaterials"
      arguments  = [ "java.util.List" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufUebersichten"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "notifyNewVersandAbrufCreated"
      returns    = "void"
      visibility = "PUBLIC"
    }
    method {
      name       = "notifyNewVersandAbrufCreated"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "void"
      visibility = "PUBLIC"
    }
    method {
      name       = "notifyNewVersandAbrufMaterialCreated"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "java.util.List" ]
      returns    = "void"
      visibility = "PUBLIC"
    }
    method {
      name       = "notifyNewVersandAbrufOrderCreated"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "java.util.List" ]
      returns    = "void"
      visibility = "PUBLIC"
    }
  }
}
