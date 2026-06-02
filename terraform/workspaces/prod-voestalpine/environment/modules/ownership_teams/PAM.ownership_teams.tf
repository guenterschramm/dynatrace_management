resource "dynatrace_ownership_teams" "PAM" {
  name       = "PAM"
  identifier = "PAM"
  contact_details {
    contact_detail {
      email            = "Robert.Traxler@voestalpine.com"
      integration_type = "EMAIL"
    }
  }
  responsibilities {
    development      = false
    infrastructure   = true
    line_of_business = true
    operations       = true
    security         = true
  }
}
