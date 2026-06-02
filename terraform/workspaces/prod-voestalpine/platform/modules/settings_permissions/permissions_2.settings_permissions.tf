resource "dynatrace_settings_permissions" "permissions_2" {
  all_users          = "none"
  settings_object_id = "vu9U3hXa3q0AAAABACtidWlsdGluOm9wZW5waXBlbGluZS5kYXZpcy5ldmVudHMucGlwZWxpbmVzAAZ0ZW5hbnQABnRlbmFudAAkOGQ5MmM0MDYtZTczYi0zZmFhLTljZGMtYjA3MDkwZDUxNjVlvu9U3hXa3q0"
  groups {
    group {
      access = "read"
      id     = "f8263bfd-8453-41eb-bfa2-6157f6754bdb"
    }
    group {
      access = "read"
      id     = "0df20785-9e2d-498b-a6fe-cce61e9a9e5c"
    }
  }
}
