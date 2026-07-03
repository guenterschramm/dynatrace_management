resource "dynatrace_direct_shares" "direct_shares_2" {
  access      = "read"
  document_id = "6e1f0798-860b-45ab-a634-20367aa8e21a"
  recipients {
    recipient {
      type = "group"
      id   = "2f5b0dc8-a618-44e4-aa51-5399ae7c1171"
    }
    recipient {
      type = "user"
      id   = "6d0797b3-4352-4881-800c-e174d1cac922"
    }
  }
}
