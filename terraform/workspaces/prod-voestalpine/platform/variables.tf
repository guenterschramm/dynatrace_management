variable "environment_url" {
  type = string
}

variable "api_token" {
  type      = string
  sensitive = true
}

variable "platform_token" {
  type      = string
  sensitive = true
  default   = ""
}
