resource "dynatrace_direct_shares" "direct_shares_3" {
  access      = "read"
  document_id = "e3ab1eaf-5274-4845-b472-ef467dc1f7cf"
  recipients {
    recipient {
      type = "user"
      id   = "6d0797b3-4352-4881-800c-e174d1cac922"
    }
  }
}
