resource "dynatrace_document" "Secure_Azure_Storage_account_container" {
  name      = "Secure Azure Storage account container"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
          - id: dynatrace.msteams
            version: ^2.2.1
          - id: dynatrace.microsoft.azure.connector
            version: ^1.0.3
      inputs:
        - type: connection
          schema: app:dynatrace.msteams:connection
          targets:
            - tasks.send_message_1.connectionId
        - type: connection
          schema: builtin:hyperscaler-authentication.connections.azure
          connectionFilter: value.federatedIdentityCredential.consumers contains 'APP:dynatrace.microsoft.azure.connector'
          targets:
            - tasks.storage_accounts_update.connection
      trackingId: container-block-public-access
    workflow:
      title: Block Azure Storage account container public access
      description: Automatically blocks public access to a specified Azure Storage account container.
      guide: |-
        # Quick setup
        1. Grant Workflow permissions: Go to Workflows > Settings > Authorization settings and enable required permissions for running actions and managing Azure resources. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/security#user-permission
        2. Create an Azure connection: Go to Settings > Connections > [Azure](/ui/apps/dynatrace.settings/settings/dynatrace.microsoft.azure.connector) > **+ Connection** with permissions for Storage Account management. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/azure/azure-workflows-setup
        3. Configure inputs: Provide the Storage Account name, Resource Group, and Subscription ID. Adjust parameters as needed (e.g., `allowBlobPublicAccess: false`, `publicNetworkAccess: Disabled`).
        4. (Optional) Set up Microsoft Teams connection: To receive notifications, configure a Teams connection and channel.
        5. Test and tune: Run once manually to validate end-to-end.
    
        # Trigger configuration
        No trigger is active by default. Set up a schedule (for example, daily) or run on-demand during audits and reviews.
    
        # About the update action
        The template uses the `arm-storage-storage-accounts-update` action to block public access on the specified Storage Account. You can:
        - Change the Storage Account, Resource Group, or Subscription as needed.
        - Adjust parameters to fit your security policy.
        - Extend to multiple accounts or automate based on detected risks.
    
        # Additional configuration and tips
        - Governance: Apply Azure policies and monitoring for compliance.
        - Notifications: Integrate with Microsoft Teams for alerting on changes.
        - Review audit logs for changes to storage account settings.
        - Learn more: [Azure Storage security documentation](https://learn.microsoft.com/en-us/azure/storage/common/storage-security-guide)
      schemaVersion: 4
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      tasks:
        send_message_1:
          name: send_message_1
          input:
            message: |
              {
              "type": "AdaptiveCard",
              "$schema": "https://adaptivecards.io/schemas/adaptive-card.json",
              "version": "1.5",
              "body": [
                  {
                      "type": "ColumnSet",
                      "columns": [
                          {
                              "type": "Column",
                              "width": "auto",
                              "horizontalAlignment": "Left",
                              "items": [
                                  {
                                      "type": "TextBlock",
                                      "text": "⚠️ Storage accounts Public Access Blocked",
                                      "wrap": true,
                                      "style": "heading"
                                  }
                              ]
                          }
                      ]
                  },
                  {
                      "type": "FactSet",
                      "facts": [
                          {
                              "title": "Buckets Updated",
                              "value": "{{ result('storage_accounts_update') | length }}"
                          },
                          {
                              "title": "Action Taken",
                              "value": "Public access blocked"
                          },
                          {
                              "title": "Execution Time",
                              "value": "{{ execution().started_at }}"
                          }
                      ],
                      "separator": true
                  },
                  {
                      "type": "TextBlock",
                      "text": "The following Azure Storage account container(s) have been updated to block public access:",
                      "wrap": true,
                      "separator": true
                  },
                  {
                      "type": "Container",
                      "items": [
                          {
                              "type": "TextBlock",
                              "text": "**{{ task("storage_accounts_update").input.resourceGroupName }}** · Public Access Blocked",
                              "wrap": true
                          }
                      ],
                      "style": "emphasis"
                  }
              ]
              }
            connectionId: ''
          action: dynatrace.msteams:send-message
          position:
            x: 0
            y: 2
          conditions:
            states:
              storage_accounts_update: OK
          description: Send messages and Adaptive Cards to Microsoft Teams channels
          predecessors:
            - storage_accounts_update
        storage_accounts_update:
          name: storage_accounts_update
          input:
            connection: ''
            parameters: "{\n  \"allowBlobPublicAccess\": false,\n  \"publicNetworkAccess\"\
              : \"Disabled\"\n}"
            accountName: exampleaccount
            subscriptionId: 232d5d7b-f915-4e4fd8906743
            resourceGroupName: sample-resource-group
          action: dynatrace.microsoft.azure.connector:arm-storage-storage-accounts-update
          position:
            x: 0
            y: 1
          description: The update operation can be used to update the SKU, encryption,
            access tier, or tags for a storage account
          predecessors: []
    EOT
  custom_id = "dynatrace.microsoft.azure.connector.container-block-public-access"
  # private = false
}
