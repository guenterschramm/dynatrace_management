resource "dynatrace_custom_service" "FrontstageService" {
  name                = "FrontstageService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.frontstage.DefaultFrontstageService"
      match = "EQUALS"
    }
    method {
      name       = "deleteElements"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "reactor.core.publisher.Flux", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "deleteElements"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "java.lang.String", "java.util.List", "java.util.Map", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "deleteElements"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "java.util.Map", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "replaceElements"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "reactor.core.publisher.Flux", "java.lang.String", "kotlin.jvm.functions.Function1" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "saveElements"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "reactor.core.publisher.Flux", "com.netural.frontstage.internal.collection.domain.MergePolicy", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
