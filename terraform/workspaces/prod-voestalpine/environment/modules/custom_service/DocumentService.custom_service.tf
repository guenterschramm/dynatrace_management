resource "dynatrace_custom_service" "DocumentService" {
  name                = "DocumentService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.document.DocumentService"
      match = "EQUALS"
    }
    method {
      name       = "createDocumentsBundle"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$CreateDocumentsBundle" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "deleteDocumentsBundle"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$DeleteDocumentsBundle" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getDeliveryNoteUrl"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocumentUrl" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getDocument"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocument" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getDocumentSettings"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocumentSettings" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getDocumentsBundle"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocumentsBundle" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getDocumentsBundlePackage"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocumentsBundlePackage" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getDocumentsBundlesForUser"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocumentsBundlesForUser" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getDocumentsUpdatedAfter"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocumentsUpdatedAfter" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getFactoryCertificateUrl"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocumentUrl" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getInvoiceUrl"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocumentUrl" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderConfirmationUrl"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetDocumentUrl" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderDocumentTypeSettings"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetOrderDocumentTypeSettings" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderDocumentsSettings"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$GetOrderDocumentsSettings" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "lockDocument"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$LockDocument" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "lockOrderDocumentType"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$LockOrderDocumentType" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "lockOrderDocuments"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$LockOrderDocuments" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "unlockDocument"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$UnlockDocument" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "unlockOrderDocumentType"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$UnlockOrderDocumentType" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "unlockOrderDocuments"
      arguments  = [ "com.voestalpine.dki.document.DocumentService$UnlockOrderDocuments" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
