resource "dynatrace_attribute_masking" "url_path" {
  enabled = true
  key     = "url.path"
  masking = "MASK_ENTIRE_VALUE"
}
