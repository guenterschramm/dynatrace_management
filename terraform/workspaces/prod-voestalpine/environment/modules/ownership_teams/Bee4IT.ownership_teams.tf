resource "dynatrace_ownership_teams" "Bee4IT" {
  name       = "Bee4IT"
  identifier = "Bee4IT"
  contact_details {
    contact_detail {
      email            = "Johannes.Palmetshofer@voestalpine.com"
      integration_type = "EMAIL"
    }
    contact_detail {
      email            = "Christian.Meisl@voestalpine.com"
      integration_type = "EMAIL"
    }
    contact_detail {
      email            = "guenter.schramm@voestalpine.com"
      integration_type = "EMAIL"
    }
    contact_detail {
      email            = "michael.pointl@voestalpine.com"
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
