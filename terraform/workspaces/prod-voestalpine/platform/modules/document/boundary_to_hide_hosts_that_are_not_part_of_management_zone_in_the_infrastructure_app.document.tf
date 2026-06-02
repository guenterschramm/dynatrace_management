resource "dynatrace_document" "boundary_to_hide_hosts_that_are_not_part_of_management_zone_in_the_infrastructure_app" {
  name    = "boundary to hide hosts that are not part of management zone in the infrastructure app"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "boundary to hide hosts that are not part of management zone in the infrastructure app"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "020de4fd-33e5-4efc-b383-87ba2c074f3a",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Filter classic metrics by management zone",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/metrics-classic/metrics-mz"
            },
            {
              "title": "Management-zone rules",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/identity-access-management/permission-management/management-zones/management-zone-rules"
            },
            {
              "title": "Management zones API - POST a management zone",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/configuration-api/management-zones-api/post-mz"
            }
          ],
          "state": {
            "conversationId": "e361f210-973c-463d-b05f-1709517f06eb",
            "history": [
              {
                "role": "user",
                "text": "boundary to hide hosts that are not part of management zone in the infrastructure app"
              },
              {
                "role": "ai",
                "text": "To hide hosts that are not part of a management zone in the infrastructure app, you can set up management zone rules. Here are the steps:\n\n1. **Select/Create a Management Zone**: Navigate to the management zones setup page and create or select a management zone.\n2. **Add a New Rule**: Click on \"Add a new rule\".\n3. **Rule Type**: Select \"Monitored entity\".\n4. **Entity Type**: Choose \"Hosts\" as the entity type the rule applies to.\n5. **Add Condition**: \n   - **Property**: Select \"Host group\".\n   - **Operator**: Choose the appropriate operator (e.g., \"equals\").\n   - **Value**: Enter the host group name or other relevant criteria.\n6. **Save Changes**: Save the rule to apply the management zone.\n\nBy setting up these rules, only hosts that match the specified conditions will be visible within the management zone in the infrastructure app."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To hide hosts that are not part of a management zone in the infrastructure app, you can set up management zone rules. Here are the steps:\n\n1. **Select/Create a Management Zone**: Navigate to the management zones setup page and create or select a management zone.\n2. **Add a New Rule**: Click on \"Add a new rule\".\n3. **Rule Type**: Select \"Monitored entity\".\n4. **Entity Type**: Choose \"Hosts\" as the entity type the rule applies to.\n5. **Add Condition**: \n   - **Property**: Select \"Host group\".\n   - **Operator**: Choose the appropriate operator (e.g., \"equals\").\n   - **Value**: Enter the host group name or other relevant criteria.\n6. **Save Changes**: Save the rule to apply the management zone.\n\nBy setting up these rules, only hosts that match the specified conditions will be visible within the management zone in the infrastructure app."
        },
        {
          "role": "user",
          "text": "what does the boundary rule look like?"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "7db340b0-1d62-42a9-98df-4fcab78bd172",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Log entry boundary",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-log-ingestion/lma-log-ingestion-via-oa/lma-log-entry-boundary"
            },
            {
              "title": "Policy boundaries",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/identity-access-management/permission-management/manage-user-permissions-policies/iam-policy-boundaries"
            },
            {
              "title": "Timestamp/splitting configuration",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-log-ingestion/lma-log-ingestion-via-oa/lma-timestamp-configuration"
            }
          ],
          "state": {
            "conversationId": "e361f210-973c-463d-b05f-1709517f06eb",
            "history": [
              {
                "role": "user",
                "text": "boundary to hide hosts that are not part of management zone in the infrastructure app"
              },
              {
                "role": "ai",
                "text": "To hide hosts that are not part of a management zone in the infrastructure app, you can set up management zone rules. Here are the steps:\n\n1. **Select/Create a Management Zone**: Navigate to the management zones setup page and create or select a management zone.\n2. **Add a New Rule**: Click on \"Add a new rule\".\n3. **Rule Type**: Select \"Monitored entity\".\n4. **Entity Type**: Choose \"Hosts\" as the entity type the rule applies to.\n5. **Add Condition**: \n   - **Property**: Select \"Host group\".\n   - **Operator**: Choose the appropriate operator (e.g., \"equals\").\n   - **Value**: Enter the host group name or other relevant criteria.\n6. **Save Changes**: Save the rule to apply the management zone.\n\nBy setting up these rules, only hosts that match the specified conditions will be visible within the management zone in the infrastructure app."
              },
              {
                "role": "user",
                "text": "what does the boundary rule look like?"
              },
              {
                "role": "ai",
                "text": "Certainly! To hide hosts that are not part of a management zone in the infrastructure app, you can create a policy boundary with a condition that specifies the management zone. Here is an example of what the boundary rule might look like:\n\n1. **Boundary Name**: `HideNonManagementZoneHosts`\n2. **Boundary query**: \n   ```\n   environment:management-zone IS NOT NULL;\n   ```\n\nThis boundary ensures that only hosts that are part of a management zone are visible."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Certainly! To hide hosts that are not part of a management zone in the infrastructure app, you can create a policy boundary with a condition that specifies the management zone. Here is an example of what the boundary rule might look like:\n\n1. **Boundary Name**: `HideNonManagementZoneHosts`\n2. **Boundary query**: \n   ```\n   environment:management-zone IS NOT NULL;\n   ```\n\nThis boundary ensures that only hosts that are part of a management zone are visible."
        },
        {
          "role": "user",
          "text": "under infrastucture I see hosts that are not part of my management zone"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "13cfeec6-66f6-4b50-adeb-8f7214036b80",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Management-zone rules",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/identity-access-management/permission-management/management-zones/management-zone-rules"
            },
            {
              "title": "Filter classic metrics by management zone",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/metrics-classic/metrics-mz"
            },
            {
              "title": "Management zones API - POST a management zone",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/configuration-api/management-zones-api/post-mz"
            }
          ],
          "state": {
            "conversationId": "e361f210-973c-463d-b05f-1709517f06eb",
            "history": [
              {
                "role": "user",
                "text": "boundary to hide hosts that are not part of management zone in the infrastructure app"
              },
              {
                "role": "ai",
                "text": "To hide hosts that are not part of a management zone in the infrastructure app, you can set up management zone rules. Here are the steps:\n\n1. **Select/Create a Management Zone**: Navigate to the management zones setup page and create or select a management zone.\n2. **Add a New Rule**: Click on \"Add a new rule\".\n3. **Rule Type**: Select \"Monitored entity\".\n4. **Entity Type**: Choose \"Hosts\" as the entity type the rule applies to.\n5. **Add Condition**: \n   - **Property**: Select \"Host group\".\n   - **Operator**: Choose the appropriate operator (e.g., \"equals\").\n   - **Value**: Enter the host group name or other relevant criteria.\n6. **Save Changes**: Save the rule to apply the management zone.\n\nBy setting up these rules, only hosts that match the specified conditions will be visible within the management zone in the infrastructure app."
              },
              {
                "role": "user",
                "text": "what does the boundary rule look like?"
              },
              {
                "role": "ai",
                "text": "Certainly! To hide hosts that are not part of a management zone in the infrastructure app, you can create a policy boundary with a condition that specifies the management zone. Here is an example of what the boundary rule might look like:\n\n1. **Boundary Name**: `HideNonManagementZoneHosts`\n2. **Boundary query**: \n   ```\n   environment:management-zone IS NOT NULL;\n   ```\n\nThis boundary ensures that only hosts that are part of a management zone are visible."
              },
              {
                "role": "user",
                "text": "under infrastucture I see hosts that are not part of my management zone"
              },
              {
                "role": "ai",
                "text": "To hide hosts that are not part of your management zone in the infrastructure app, follow these steps:\n\n1. **Create a Management Zone**:\n   - Navigate to **Settings** \u003e **Management zones**.\n   - Select **Create a management zone** and provide a name for the zone.\n\n2. **Add a Rule for Hosts**:\n   - Select **Add a new rule**.\n   - Choose **Monitored entity** as the **Rule type**.\n   - Select **Hosts** as the entity type the rule applies to.\n   - Add conditions to specify which hosts should be included in the management zone (e.g., by host group, host name, or other properties).\n   - **Save changes**.\n\n3. **Assign the Management Zone**:\n   - Ensure that the hosts you want to include are correctly assigned to the management zone based on the conditions you set.\n\n4. **Filter by Management Zone in the Infrastructure App**:\n   - Open the **Infrastructure** app.\n   - Use the **Management zone** filter to select your newly created management zone.\n   - Only hosts within the selected management zone will be displayed.\n\nBy following these steps, you can effectively hide hosts that are not part of your management zone in the infrastructure app."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To hide hosts that are not part of your management zone in the infrastructure app, follow these steps:\n\n1. **Create a Management Zone**:\n   - Navigate to **Settings** \u003e **Management zones**.\n   - Select **Create a management zone** and provide a name for the zone.\n\n2. **Add a Rule for Hosts**:\n   - Select **Add a new rule**.\n   - Choose **Monitored entity** as the **Rule type**.\n   - Select **Hosts** as the entity type the rule applies to.\n   - Add conditions to specify which hosts should be included in the management zone (e.g., by host group, host name, or other properties).\n   - **Save changes**.\n\n3. **Assign the Management Zone**:\n   - Ensure that the hosts you want to include are correctly assigned to the management zone based on the conditions you set.\n\n4. **Filter by Management Zone in the Infrastructure App**:\n   - Open the **Infrastructure** app.\n   - Use the **Management zone** filter to select your newly created management zone.\n   - Only hosts within the selected management zone will be displayed.\n\nBy following these steps, you can effectively hide hosts that are not part of your management zone in the infrastructure app."
        },
        {
          "role": "user",
          "text": "An error occurred while loading data: Insufficient permission to access table (dt.entity.host)."
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "f8248689-47eb-4081-8608-d5f0582a9ec2",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "workflow error 403 - Insufficient permission to access table events",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Automations/workflow-error-403-Insufficient-permission-to-access-table/m-p/265045#M1944"
            },
            {
              "title": "Re: workflow error 403 - Insufficient permission to access table events",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Automations/workflow-error-403-Insufficient-permission-to-access-table/m-p/265073#M1945"
            },
            {
              "title": "Re: workflow error 403 - Insufficient permission to access table events",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Automations/workflow-error-403-Insufficient-permission-to-access-table/m-p/265242#M1947"
            },
            {
              "title": "Grant access to Dynatrace through default groups and permissions",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/identity-access-management/use-cases/default-groups-permissions"
            }
          ],
          "state": {
            "conversationId": "e361f210-973c-463d-b05f-1709517f06eb",
            "history": [
              {
                "role": "user",
                "text": "boundary to hide hosts that are not part of management zone in the infrastructure app"
              },
              {
                "role": "ai",
                "text": "To hide hosts that are not part of a management zone in the infrastructure app, you can set up management zone rules. Here are the steps:\n\n1. **Select/Create a Management Zone**: Navigate to the management zones setup page and create or select a management zone.\n2. **Add a New Rule**: Click on \"Add a new rule\".\n3. **Rule Type**: Select \"Monitored entity\".\n4. **Entity Type**: Choose \"Hosts\" as the entity type the rule applies to.\n5. **Add Condition**: \n   - **Property**: Select \"Host group\".\n   - **Operator**: Choose the appropriate operator (e.g., \"equals\").\n   - **Value**: Enter the host group name or other relevant criteria.\n6. **Save Changes**: Save the rule to apply the management zone.\n\nBy setting up these rules, only hosts that match the specified conditions will be visible within the management zone in the infrastructure app."
              },
              {
                "role": "user",
                "text": "what does the boundary rule look like?"
              },
              {
                "role": "ai",
                "text": "Certainly! To hide hosts that are not part of a management zone in the infrastructure app, you can create a policy boundary with a condition that specifies the management zone. Here is an example of what the boundary rule might look like:\n\n1. **Boundary Name**: `HideNonManagementZoneHosts`\n2. **Boundary query**: \n   ```\n   environment:management-zone IS NOT NULL;\n   ```\n\nThis boundary ensures that only hosts that are part of a management zone are visible."
              },
              {
                "role": "user",
                "text": "under infrastucture I see hosts that are not part of my management zone"
              },
              {
                "role": "ai",
                "text": "To hide hosts that are not part of your management zone in the infrastructure app, follow these steps:\n\n1. **Create a Management Zone**:\n   - Navigate to **Settings** \u003e **Management zones**.\n   - Select **Create a management zone** and provide a name for the zone.\n\n2. **Add a Rule for Hosts**:\n   - Select **Add a new rule**.\n   - Choose **Monitored entity** as the **Rule type**.\n   - Select **Hosts** as the entity type the rule applies to.\n   - Add conditions to specify which hosts should be included in the management zone (e.g., by host group, host name, or other properties).\n   - **Save changes**.\n\n3. **Assign the Management Zone**:\n   - Ensure that the hosts you want to include are correctly assigned to the management zone based on the conditions you set.\n\n4. **Filter by Management Zone in the Infrastructure App**:\n   - Open the **Infrastructure** app.\n   - Use the **Management zone** filter to select your newly created management zone.\n   - Only hosts within the selected management zone will be displayed.\n\nBy following these steps, you can effectively hide hosts that are not part of your management zone in the infrastructure app."
              },
              {
                "role": "user",
                "text": "An error occurred while loading data: Insufficient permission to access table (dt.entity.host)."
              },
              {
                "role": "ai",
                "text": "To resolve the error \"Insufficient permission to access table (dt.entity.host)\" while loading data in the infrastructure app, follow these steps:\n\n1. **Verify Permissions**: Ensure that the user has the necessary permissions to access the `dt.entity.host` table. This typically requires the `Read Entities` permission.\n2. **Check User Group**: Confirm that the user belongs to a group with the appropriate permissions. The user should be part of the `Environment Users`, `Environment Professionals`, or `Environment Admins` group.\n3. **Contact Admin**: If the user does not have the required permissions, contact the Dynatrace administrator to grant the necessary access.\n\nFor more details on permissions, refer to the [Dynatrace documentation](https://docs.dynatrace.com/docs/manage/user-management/user-groups-and-permissions)."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To resolve the error \"Insufficient permission to access table (dt.entity.host)\" while loading data in the infrastructure app, follow these steps:\n\n1. **Verify Permissions**: Ensure that the user has the necessary permissions to access the `dt.entity.host` table. This typically requires the `Read Entities` permission.\n2. **Check User Group**: Confirm that the user belongs to a group with the appropriate permissions. The user should be part of the `Environment Users`, `Environment Professionals`, or `Environment Admins` group.\n3. **Contact Admin**: If the user does not have the required permissions, contact the Dynatrace administrator to grant the necessary access.\n\nFor more details on permissions, refer to the [Dynatrace documentation](https://docs.dynatrace.com/docs/manage/user-management/user-groups-and-permissions)."
        }
      ]
    })
  private = true
}
