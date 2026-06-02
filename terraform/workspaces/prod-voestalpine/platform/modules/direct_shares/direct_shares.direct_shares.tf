resource "dynatrace_direct_shares" "direct_shares" {
  access      = "read-write"
  document_id = "04b20103-2b17-4ad8-893a-cc207f448f19"
  recipients {
    recipient {
      type = "user"
      id   = "6d0797b3-4352-4881-800c-e174d1cac922"
    }
  }
}
