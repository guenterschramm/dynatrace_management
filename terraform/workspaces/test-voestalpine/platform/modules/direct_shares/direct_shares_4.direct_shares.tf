resource "dynatrace_direct_shares" "direct_shares_4" {
  access      = "read"
  document_id = "e14a0267-617e-452e-a2fa-273ce3b2345e"
  recipients {
    recipient {
      type = "user"
      id   = "6d0797b3-4352-4881-800c-e174d1cac922"
    }
    recipient {
      type = "user"
      id   = "a8f13ca9-2db2-43ba-aa9c-8f5fe4a6e576"
    }
  }
}
