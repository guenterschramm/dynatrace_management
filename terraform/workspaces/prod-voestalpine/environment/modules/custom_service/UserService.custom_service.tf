resource "dynatrace_custom_service" "UserService" {
  name                = "UserService"
  enabled             = false
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.user.DefaultUserService"
      match = "EQUALS"
    }
    method {
      name       = "getAllUsers"
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getMailSettings"
      arguments  = [ "com.voestalpine.dki.user.UserService$GetMailSettings" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUser"
      arguments  = [ "com.voestalpine.dki.user.UserService$GetUser" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUserDetails"
      arguments  = [ "com.voestalpine.dki.user.UserService$GetUser" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUserProfile"
      arguments  = [ "com.voestalpine.dki.user.UserService$GetUser" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUsers"
      arguments  = [ "com.voestalpine.dki.user.UserService$UserDataQuery" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUsersNames"
      arguments  = [ "com.voestalpine.dki.user.UserService$BulkUserAction" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "lockUsers"
      arguments  = [ "com.voestalpine.dki.user.UserService$BulkUserAction" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "registerUser"
      arguments  = [ "com.voestalpine.dki.user.registration.domain.UserRegistration" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "saveLoginInfo"
      arguments  = [ "com.voestalpine.dki.user.domain.LoginInfo" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "unlockUsers"
      arguments  = [ "com.voestalpine.dki.user.UserService$BulkUserAction" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateGeneralUserData"
      arguments  = [ "com.voestalpine.dki.user.UserService$UpdateGeneralUserData" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateMailSettings"
      arguments  = [ "com.voestalpine.dki.user.UserService$UpdateMailSettings" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateServiceUserData"
      arguments  = [ "com.voestalpine.dki.user.UserService$UpdateServiceUserData" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateUser"
      arguments  = [ "com.voestalpine.dki.user.UserService$UpdateUser" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
