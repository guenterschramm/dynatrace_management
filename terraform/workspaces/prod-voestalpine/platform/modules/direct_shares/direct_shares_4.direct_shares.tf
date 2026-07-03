resource "dynatrace_direct_shares" "direct_shares_4" {
  access      = "read"
  document_id = "916cdcb3-29e4-4ee0-bad1-46264581e712"
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
