resource "dynatrace_custom_service" "MessageService" {
  name                = "MessageService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.message.MessageClient"
      match = "EQUALS"
    }
    method {
      name       = "createSystemMessage"
      arguments  = [ "com.voestalpine.dki.message.domain.CreateSystemMessage" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "deleteSystemMessage"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getAllSystemMessages"
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getSystemMessage"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getSystemMessagesForApplication"
      arguments  = [ "com.voestalpine.dki.core.domain.DKIApplication" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateSystemMessage"
      arguments  = [ "com.voestalpine.dki.message.domain.UpdateSystemMessage" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
