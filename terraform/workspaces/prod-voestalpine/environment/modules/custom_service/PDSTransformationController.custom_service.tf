resource "dynatrace_custom_service" "PDSTransformationController" {
  name                = "PDSTransformationController"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.pds.controller.PDSTransformationController"
      match = "EQUALS"
    }
    method {
      name       = "computeSteelSurfacesInfo"
      arguments  = [ "com.voestalpine.dki.pds.entity.Stahlsorte" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "transformGnorm"
      arguments  = [ "com.voestalpine.dki.pds.entity.Gnorm" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "transformNormstahlsorte"
      arguments  = [ "com.voestalpine.dki.pds.entity.Normstahlsorte" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "transformStahlsorte"
      arguments  = [ "com.voestalpine.dki.pds.entity.Stahlsorte" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "transformWerksmarke"
      arguments  = [ "com.voestalpine.dki.pds.entity.Werksmarke" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
