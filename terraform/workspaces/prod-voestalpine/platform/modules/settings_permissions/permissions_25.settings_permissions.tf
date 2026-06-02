resource "dynatrace_settings_permissions" "permissions_25" {
  all_users          = "none"
  settings_object_id = "vu9U3hXa3q0AAAABACNidWlsdGluOm9wZW5waXBlbGluZS5sb2dzLnBpcGVsaW5lcwAGdGVuYW50AAZ0ZW5hbnQAJGJjYzIyOTA4LTY2OGItM2YyYS1iYTA1LTVjZmI4N2I3YmZmM77vVN4V2t6t"
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
