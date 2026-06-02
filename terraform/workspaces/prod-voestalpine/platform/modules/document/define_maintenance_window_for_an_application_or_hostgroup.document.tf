resource "dynatrace_document" "define_maintenance_window_for_an_application_or_hostgroup" {
  name    = "define maintenance window for an application or hostgroup"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "define maintenance window for an application or hostgroup"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "f03d95ba-6e07-422d-aa6c-e7cf04836e54",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "How to define a maintenance window — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/notifications-and-alerting/maintenance-windows/define-maintenance-window"
            },
            {
              "title": "Maintenance windows — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/notifications-and-alerting/maintenance-windows"
            },
            {
              "title": "Maintenance windows environment API — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/environment-api/maintenance-windows"
            }
          ],
          "state": {
            "conversationId": "ce2b06b7-4158-4d4f-991a-f3db030a604a",
            "history": [
              {
                "role": "user",
                "text": "define maintenance window for an application or hostgroup"
              },
              {
                "role": "ai",
                "text": "To define a maintenance window for an application or host group, follow these steps:\n\n1. **Navigate to Maintenance Windows**: Go to the Dynatrace web UI and access the maintenance windows section.\n2. **Create a New Maintenance Window**: Click on the option to create a new maintenance window.\n3. **Set Schedule**: Define the start and end date/time for the maintenance window. Optionally, set recurrence if needed.\n4. **Define Scope**:\n   - **For an Application**: Add a filter for the application entity type and specify the application name or ID.\n   - **For a Host Group**: Add a filter for the host group entity type and specify the host group name or ID.\n5. **Configure Alerts and Problems**: Choose whether to suppress alerts and problem detection during the maintenance window.\n6. **Save**: Save the maintenance window configuration.\n\nThis will ensure that the specified application or host group is under maintenance during the defined period."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To define a maintenance window for an application or host group, follow these steps:\n\n1. **Navigate to Maintenance Windows**: Go to the Dynatrace web UI and access the maintenance windows section.\n2. **Create a New Maintenance Window**: Click on the option to create a new maintenance window.\n3. **Set Schedule**: Define the start and end date/time for the maintenance window. Optionally, set recurrence if needed.\n4. **Define Scope**:\n   - **For an Application**: Add a filter for the application entity type and specify the application name or ID.\n   - **For a Host Group**: Add a filter for the host group entity type and specify the host group name or ID.\n5. **Configure Alerts and Problems**: Choose whether to suppress alerts and problem detection during the maintenance window.\n6. **Save**: Save the maintenance window configuration.\n\nThis will ensure that the specified application or host group is under maintenance during the defined period."
        },
        {
          "role": "user",
          "text": "what permissions are required to manage maintenance windows"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "64f0d4a3-d4a0-4f17-8b73-81538e971691",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Apply and use management zones — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/identity-access-management/permission-management/management-zones/apply-and-use-management-zones"
            },
            {
              "title": "Management zones — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/identity-access-management/permission-management/management-zones"
            },
            {
              "title": "Configuration types and access permissions — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/deliver/configuration-as-code/monaco/reference/supported-configuration"
            }
          ],
          "state": {
            "conversationId": "ce2b06b7-4158-4d4f-991a-f3db030a604a",
            "history": [
              {
                "role": "user",
                "text": "define maintenance window for an application or hostgroup"
              },
              {
                "role": "ai",
                "text": "To define a maintenance window for an application or host group, follow these steps:\n\n1. **Navigate to Maintenance Windows**: Go to the Dynatrace web UI and access the maintenance windows section.\n2. **Create a New Maintenance Window**: Click on the option to create a new maintenance window.\n3. **Set Schedule**: Define the start and end date/time for the maintenance window. Optionally, set recurrence if needed.\n4. **Define Scope**:\n   - **For an Application**: Add a filter for the application entity type and specify the application name or ID.\n   - **For a Host Group**: Add a filter for the host group entity type and specify the host group name or ID.\n5. **Configure Alerts and Problems**: Choose whether to suppress alerts and problem detection during the maintenance window.\n6. **Save**: Save the maintenance window configuration.\n\nThis will ensure that the specified application or host group is under maintenance during the defined period."
              },
              {
                "role": "user",
                "text": "what permissions are required to manage maintenance windows"
              },
              {
                "role": "ai",
                "text": "To manage maintenance windows in Dynatrace, you need the following permissions:\n\n1. **Read Configuration** (`Read Configuration`)\n2. **Write Configuration** (`Write Configuration`)"
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To manage maintenance windows in Dynatrace, you need the following permissions:\n\n1. **Read Configuration** (`Read Configuration`)\n2. **Write Configuration** (`Write Configuration`)"
        }
      ]
    })
  private = true
}
