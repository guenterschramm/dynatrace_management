resource "dynatrace_iam_group" "_2217_Dynatrace_Admins" {
  name          = "2217_Dynatrace_Admins"
  # description = ""
  permissions {
    permission {
      name  = "tenant-view-sensitive-request-data"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "tenant-manage-support-tickets"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "tenant-manage-security-problems"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "tenant-configure-request-capture-data"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "account-viewer"
      type  = "account"
      scope = "c65530cc-1621-455c-989d-22e43b2c00f5"
    }
    permission {
      name  = "account-company-info"
      type  = "account"
      scope = "c65530cc-1621-455c-989d-22e43b2c00f5"
    }
    permission {
      name  = "tenant-view-security-problems"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "tenant-viewer"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "tenant-replay-sessions-without-masking"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "tenant-replay-sessions-with-masking"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "tenant-manage-settings"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "tenant-agent-install"
      type  = "tenant"
      scope = "uqy31769"
    }
    permission {
      name  = "account-user-management"
      type  = "account"
      scope = "c65530cc-1621-455c-989d-22e43b2c00f5"
    }
    permission {
      name  = "tenant-replay-sessions-with-masking"
      type  = "tenant"
      scope = "hgm72482"
    }
    permission {
      name  = "tenant-manage-security-problems"
      type  = "tenant"
      scope = "hgm72482"
    }
    permission {
      name  = "tenant-manage-support-tickets"
      type  = "tenant"
      scope = "hgm72482"
    }
    permission {
      name  = "tenant-manage-settings"
      type  = "tenant"
      scope = "hgm72482"
    }
    permission {
      name  = "tenant-view-sensitive-request-data"
      type  = "tenant"
      scope = "hgm72482"
    }
    permission {
      name  = "tenant-configure-request-capture-data"
      type  = "tenant"
      scope = "hgm72482"
    }
    permission {
      name  = "tenant-viewer"
      type  = "tenant"
      scope = "hgm72482"
    }
    permission {
      name  = "tenant-agent-install"
      type  = "tenant"
      scope = "hgm72482"
    }
    permission {
      name  = "tenant-view-security-problems"
      type  = "tenant"
      scope = "hgm72482"
    }
    permission {
      name  = "tenant-replay-sessions-without-masking"
      type  = "tenant"
      scope = "hgm72482"
    }
  }
}
