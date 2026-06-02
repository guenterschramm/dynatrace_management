resource "dynatrace_custom_service" "MongoService" {
  name                = "MongoService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.netural.frontstage.mongodb.DefaultMongoService"
      match = "EQUALS"
    }
    method {
      name       = "findAllBy"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.Class", "org.springframework.data.mongodb.core.query.Criteria", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "findAllBy"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.Class", "org.springframework.data.mongodb.core.query.Criteria" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "findById"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.Object", "java.lang.Class", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "findById"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.Object", "java.lang.Class" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "remove"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.Object", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "remove"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.Object" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "removeAllBy"
      arguments  = [ "java.lang.String", "java.lang.String", "org.springframework.data.mongodb.core.query.Criteria", "java.lang.Class" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "removeAllBy"
      arguments  = [ "java.lang.String", "java.lang.String", "org.springframework.data.mongodb.core.query.Criteria", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "removeById"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.Object", "java.lang.Class" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "removeById"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.Object", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "save"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.Object" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "saveAll"
      arguments  = [ "java.lang.String", "java.lang.String", "reactor.core.publisher.Flux", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "saveAll"
      arguments  = [ "java.lang.String", "java.lang.String", "reactor.core.publisher.Flux" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
  }
}
