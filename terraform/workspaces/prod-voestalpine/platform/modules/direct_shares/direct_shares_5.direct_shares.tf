resource "dynatrace_direct_shares" "direct_shares_5" {
  access      = "read-write"
  document_id = "problem-TSG-5669121691853976939-1759919156201V2-faf16d6e-6e69-42f3-8e09-2071def9fb22"
  recipients {
    recipient {
      type = "group"
      id   = "1937f341-adfe-4ac8-b861-dc520e9ff2c9"
    }
    recipient {
      type = "group"
      id   = "2df7348e-1fef-4da6-aec5-dae53b81cc42"
    }
  }
}
