resource "dynatrace_direct_shares" "direct_shares_6" {
  access      = "read"
  document_id = "dd4ba15d-fb3b-420f-bad3-c4f48e748bc9"
  recipients {
    recipient {
      type = "group"
      id   = "a6140a90-81d6-4d36-a686-ed5e84d8c157"
    }
  }
}
