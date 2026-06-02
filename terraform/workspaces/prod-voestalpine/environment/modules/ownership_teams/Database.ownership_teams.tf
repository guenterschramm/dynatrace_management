resource "dynatrace_ownership_teams" "Database" {
  name       = "Database"
  identifier = "Database"
  contact_details {
    contact_detail {
      email            = "Manuel.Ehmair@voestalpine.com"
      integration_type = "EMAIL"
    }
  }
  responsibilities {
    development      = false
    infrastructure   = true
    line_of_business = true
    operations       = true
    security         = false
  }
}
