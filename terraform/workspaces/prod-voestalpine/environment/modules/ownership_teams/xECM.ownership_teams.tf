resource "dynatrace_ownership_teams" "xECM" {
  name       = "xECM"
  identifier = "xECM"
  contact_details {
    contact_detail {
      email            = "dietmar.wallner@voestalpine.com"
      integration_type = "EMAIL"
    }
    contact_detail {
      email            = "xECM_Admins@voestalpine.com"
      integration_type = "EMAIL"
    }
  }
  responsibilities {
    development      = false
    infrastructure   = false
    line_of_business = true
    operations       = true
    security         = false
  }
}
