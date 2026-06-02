resource "dynatrace_custom_service" "DocumentsBundleS3StorageController" {
  name                = "DocumentsBundleS3StorageController"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.document.controller.DocumentsBundleS3StorageController"
      match = "EQUALS"
    }
    method {
      name       = "deleteDocument"
      arguments  = [ "com.voestalpine.dki.document.entity.BundleDocument" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "deleteDocumentsBundle"
      arguments  = [ "com.voestalpine.dki.document.entity.DocumentsBundle" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "retrieveDocument"
      arguments  = [ "com.voestalpine.dki.document.entity.BundleDocument" ]
      returns    = "java.util.concurrent.Callable"
      visibility = "PUBLIC"
    }
    method {
      name       = "retrieveDocumentBundle"
      arguments  = [ "com.voestalpine.dki.document.entity.DocumentsBundle" ]
      returns    = "java.util.concurrent.Callable"
      visibility = "PUBLIC"
    }
    method {
      name       = "storeDocument"
      arguments  = [ "com.voestalpine.dki.document.entity.BundleDocument", "com.voestalpine.dki.document.entity.DocumentContent" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "storeDocumentsBundle"
      arguments  = [ "com.voestalpine.dki.document.entity.DocumentsBundle", "com.voestalpine.dki.document.entity.DocumentContent" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
