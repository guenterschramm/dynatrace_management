resource "dynatrace_direct_shares" "direct_shares_6" {
  access      = "read"
  document_id = "ed0bd696-1caa-40dc-9631-ebf28c315cf0"
  recipients {
    recipient {
      type = "group"
      id   = "2df7348e-1fef-4da6-aec5-dae53b81cc42"
    }
    recipient {
      type = "group"
      id   = "a6140a90-81d6-4d36-a686-ed5e84d8c157"
    }
  }
}
