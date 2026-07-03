resource "dynatrace_settings_permissions" "permissions_50" {
  all_users          = "none"
  settings_object_id = "vu9U3hXa3q0AAAABACZidWlsdGluOm9wZW5waXBlbGluZS5tZXRyaWNzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJDM1MjRmMmI0LTNjNzMtM2NjZS1iODYzLWRkOTE3ZGRjNjVmY77vVN4V2t6t"
  groups {
    group {
      access = "read"
      id     = "0df20785-9e2d-498b-a6fe-cce61e9a9e5c"
    }
    group {
      access = "read"
      id     = "f8263bfd-8453-41eb-bfa2-6157f6754bdb"
    }
  }
}
