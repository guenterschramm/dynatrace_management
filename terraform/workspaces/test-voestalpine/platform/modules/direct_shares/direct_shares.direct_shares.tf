resource "dynatrace_direct_shares" "direct_shares" {
  access      = "read"
  document_id = "8b3440a2-77a1-4771-8b0f-dcfd77eeb4ba"
  recipients {
    recipient {
      type = "group"
      id   = "a6140a90-81d6-4d36-a686-ed5e84d8c157"
    }
  }
}
