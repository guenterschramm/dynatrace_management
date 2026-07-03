resource "dynatrace_direct_shares" "direct_shares_1" {
  access      = "read"
  document_id = "6bed74cb-9f14-4559-b3b6-d81f604e1f25"
  recipients {
    recipient {
      type = "group"
      id   = "e577c03d-051f-4762-b7cc-ebd7ac95d054"
    }
  }
}
