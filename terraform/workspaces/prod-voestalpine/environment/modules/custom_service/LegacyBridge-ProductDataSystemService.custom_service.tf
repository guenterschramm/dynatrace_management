resource "dynatrace_custom_service" "LegacyBridge-ProductDataSystemService" {
  name                = "LegacyBridge - ProductDataSystemService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.legacybridge.pds.ProductDataSystemService"
      match = "EQUALS"
    }
    method {
      name       = "addGnorm"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addLimitCurve"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleGnorms"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleNormstahlsorten"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleParameters"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleStahlsorten"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMultipleWerksmarken"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addMutlipleLimitCurves"
      arguments  = [ "reactor.core.publisher.Flux", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addNormstahlsorte"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addParameter"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addStahlsorte"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "addWerksmarke"
      arguments  = [ "reactor.core.publisher.Mono", "org.springframework.web.server.ServerWebExchange" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
