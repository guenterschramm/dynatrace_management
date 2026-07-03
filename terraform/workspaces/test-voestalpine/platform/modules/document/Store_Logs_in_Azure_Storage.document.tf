resource "dynatrace_document" "Store_Logs_in_Azure_Storage" {
  name      = "Store Logs in Azure Storage"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
          - id: dynatrace.automations
            version: ^1.2781.0
          - id: dynatrace.microsoft.azure.connector
            version: ^1.0.4
      inputs:
        - type: connection
          schema: builtin:hyperscaler-authentication.connections.azure
          connectionFilter: value.federatedIdentityCredential.consumers contains 'APP:dynatrace.microsoft.azure.connector'
          targets:
            - tasks.blob_storage_upload_1.connection
            - tasks.blob_storage_create_container_1.connection
      trackingId: send-logs-in-azure-container
    workflow:
      title: Store Logs in Azure Storage
      guide: |-
        # Quick setup
        1. Grant Workflow permissions: Go to Workflows > Settings > Authorization settings and enable required permissions for running actions and reading logs. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/security#user-permission
        2. Create an Azure connection: Go to Settings > Connections > [Azure](/ui/apps/dynatrace.settings/settings/dynatrace.microsoft.azure.connector) > **+ Connection** with permissions for Blob Storage (create container, upload blob). See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/azure/azure-workflows-setup
        3. Configure inputs: Provide the Storage Account URL, container name, and blob path/key. Adjust the upload URL to match your storage account.
        4. Test and tune: Run once manually to validate end-to-end.
    
        # Trigger configuration
        No trigger is active by default. Set up a schedule (for example, hourly or daily) or run on-demand during audits and reviews.
    
        # About the DQL query
        The template runs `fetch logs, from: now()-1h | limit 1`. Adapt as needed:
        - Filter to specific log levels, services, or hosts.
        - Extend time windows and remove the `limit`.
        - Consider batching or chunking large result sets.
    
        # Additional configuration and tips
        - Governance: Apply Azure Storage lifecycle policies and encryption for compliance.
        - The workflow creates the container automatically if it does not exist.
        - Adjust the blob name/path in the upload step to organize logs by date or source.
        - Learn more: [Azure Blob Storage documentation](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction)
      description: Stores logs from Dynatrace in an Azure Storage container.
      schemaVersion: 4
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      tasks:
        fetch_logs:
          name: fetch_logs
          input:
            query: 'fetch logs, from:now() - 1h
    
              | limit 1'
          action: dynatrace.automations:execute-dql-query
          position:
            x: 0
            y: 2
          conditions:
            states:
              blob_storage_create_container_1: OK
          description: Make use of Dynatrace Grail data in your workflow.
          predecessors:
            - blob_storage_create_container_1
        blob_storage_upload_1:
          name: blob_storage_upload_1
          input:
            url: https://exampleaccount.blob.core.windows.net/workflow-container/logs1.txt
            data: '{{ result("fetch_logs").records[0] | string }}'
            connection: ''
          action: dynatrace.microsoft.azure.connector:storage-blob-blockblobclient-upload-data
          position:
            x: 0
            y: 3
          conditions:
            states:
              fetch_logs: OK
          description: Uploads data to a BlockBlob.
          predecessors:
            - fetch_logs
        blob_storage_create_container_1:
          name: blob_storage_create_container_1
          input:
            url: https://exampleaccount.blob.core.windows.net
            connection: ''
            containerName: workflow-container
          action: dynatrace.microsoft.azure.connector:storage-blob-blobserviceclient-create-container
          active: true
          position:
            x: 0
            y: 1
          description: Create a Blob container
          predecessors: []
    EOT
  custom_id = "dynatrace.microsoft.azure.connector.send-logs-in-azure-container"
  # private = false
}
