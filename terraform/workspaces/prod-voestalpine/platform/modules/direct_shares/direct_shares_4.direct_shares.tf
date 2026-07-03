resource "dynatrace_direct_shares" "direct_shares_4" {
  access      = "read-write"
  document_id = "013eecf6-f6de-468c-9ed9-3b2b471a0b5e"
  recipients {
    recipient {
      type = "user"
      id   = "6d0797b3-4352-4881-800c-e174d1cac922"
    }
  }
}
