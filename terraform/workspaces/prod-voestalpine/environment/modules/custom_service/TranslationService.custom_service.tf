resource "dynatrace_custom_service" "TranslationService" {
  name                = "TranslationService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.core.DefaultTranslationsService"
      match = "EQUALS"
    }
    method {
      name       = "getTranslation"
      arguments  = [ "com.voestalpine.dki.core.domain.TranslationContext", "com.voestalpine.dki.core.domain.Language", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getTranslation"
      arguments  = [ "com.voestalpine.dki.core.domain.TranslationContext", "com.voestalpine.dki.core.domain.Language", "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getTranslations"
      arguments  = [ "com.voestalpine.dki.core.domain.TranslationContext", "com.voestalpine.dki.core.domain.Language", "java.util.List" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getTranslations"
      arguments  = [ "com.voestalpine.dki.core.domain.TranslationContext", "com.voestalpine.dki.core.domain.Language", "java.util.Map" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
