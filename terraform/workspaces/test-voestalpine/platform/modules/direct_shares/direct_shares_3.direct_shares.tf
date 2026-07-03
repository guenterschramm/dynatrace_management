resource "dynatrace_direct_shares" "direct_shares_3" {
  access      = "read-write"
  document_id = "6bed74cb-9f14-4559-b3b6-d81f604e1f25"
  recipients {
    recipient {
      type = "user"
      id   = "db1a0258-d161-4101-9888-7c15a809a5bf"
    }
  }
}
