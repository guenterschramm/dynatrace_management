resource "dynatrace_document" "which_permission_is_required_to_view_the_infrastructure_and_operations_app" {
  name    = "which permission is required to view the infrastructure and operations app"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "which permission is required to view the infrastructure and operations app"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "0f5e4bce-5362-4166-9b03-a19c9b3f210f",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Infrastructure \u0026 Operations",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/infrastructure-monitoring/infrastructure-and-operations"
            },
            {
              "title": "Settings API - Infrastructure \u0026 Operations app settings schema table",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/environment-api/settings/schemas/app-dynatrace-infraops-settings"
            },
            {
              "title": "Infrastructure \u0026 Operations",
              "type": "Hub",
              "url": "https://www.dynatrace.com/hub/detail/infrastructure-operations/"
            },
            {
              "title": "Introducing the Infrastructure \u0026 Operations app for streamlined troubleshooting",
              "type": "Blog",
              "url": "https://www.dynatrace.com/news/blog/trace-diagnose-resolve-introducing-the-infrastructure-operations-app-for-streamlined-troubleshooting/"
            }
          ],
          "state": {
            "conversationId": "19af2d50-167a-4698-9c0a-14760993c178",
            "history": [
              {
                "role": "user",
                "text": "which permission is required to view the infrastructure and operations app"
              },
              {
                "role": "ai",
                "text": "To view the Infrastructure \u0026 Operations app, you need the following permissions:\n\n1. **storage:logs:read**: Query logs from GRAIL.\n2. **storage:events:read**: Query events from GRAIL.\n3. **storage:buckets:read**: Read buckets.\n4. **storage:metrics:read**: Query metrics from GRAIL.\n5. **storage:entities:read**: Query entities from GRAIL.\n6. **storage:fieldsets:read**: Read masked/sensitive fields.\n7. **state:user-app-states:read**: Read user state.\n8. **state:user-app-states:write**: Write user state.\n9. **settings:objects:read**: Read settings objects from settings 2.0.\n10. **slo:objective-templates:read**: Read SLOs templates in the app."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To view the Infrastructure \u0026 Operations app, you need the following permissions:\n\n1. **storage:logs:read**: Query logs from GRAIL.\n2. **storage:events:read**: Query events from GRAIL.\n3. **storage:buckets:read**: Read buckets.\n4. **storage:metrics:read**: Query metrics from GRAIL.\n5. **storage:entities:read**: Query entities from GRAIL.\n6. **storage:fieldsets:read**: Read masked/sensitive fields.\n7. **state:user-app-states:read**: Read user state.\n8. **state:user-app-states:write**: Write user state.\n9. **settings:objects:read**: Read settings objects from settings 2.0.\n10. **slo:objective-templates:read**: Read SLOs templates in the app."
        },
        {
          "role": "user",
          "text": "how does the matching boundary for infrastruce and operations permissions look like"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "db897ff8-63fe-46d6-b8f2-1ab8738f2bee",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Infrastructure \u0026 Operations",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/infrastructure-monitoring/infrastructure-and-operations"
            },
            {
              "title": "Policy boundaries",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/identity-access-management/permission-management/manage-user-permissions-policies/iam-policy-boundaries"
            },
            {
              "title": "IAM policy reference",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/identity-access-management/permission-management/manage-user-permissions-policies/advanced/iam-policystatements"
            }
          ],
          "state": {
            "conversationId": "19af2d50-167a-4698-9c0a-14760993c178",
            "history": [
              {
                "role": "user",
                "text": "which permission is required to view the infrastructure and operations app"
              },
              {
                "role": "ai",
                "text": "To view the Infrastructure \u0026 Operations app, you need the following permissions:\n\n1. **storage:logs:read**: Query logs from GRAIL.\n2. **storage:events:read**: Query events from GRAIL.\n3. **storage:buckets:read**: Read buckets.\n4. **storage:metrics:read**: Query metrics from GRAIL.\n5. **storage:entities:read**: Query entities from GRAIL.\n6. **storage:fieldsets:read**: Read masked/sensitive fields.\n7. **state:user-app-states:read**: Read user state.\n8. **state:user-app-states:write**: Write user state.\n9. **settings:objects:read**: Read settings objects from settings 2.0.\n10. **slo:objective-templates:read**: Read SLOs templates in the app."
              },
              {
                "role": "user",
                "text": "how does the matching boundary for infrastruce and operations permissions look like"
              },
              {
                "role": "ai",
                "text": "The matching boundary for Infrastructure and Operations permissions looks like this:\n\n```plaintext\nstorage:logs:read\nstorage:events:read\nstorage:buckets:read\nstorage:metrics:read\nstorage:entities:read\nstorage:fieldsets:read\nstate:user-app-states:read\nstate:user-app-states:write\nsettings:objects:read\nslo:objective-templates:read\n```"
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "The matching boundary for Infrastructure and Operations permissions looks like this:\n\n```plaintext\nstorage:logs:read\nstorage:events:read\nstorage:buckets:read\nstorage:metrics:read\nstorage:entities:read\nstorage:fieldsets:read\nstate:user-app-states:read\nstate:user-app-states:write\nsettings:objects:read\nslo:objective-templates:read\n```"
        }
      ]
    })
  private = true
}
