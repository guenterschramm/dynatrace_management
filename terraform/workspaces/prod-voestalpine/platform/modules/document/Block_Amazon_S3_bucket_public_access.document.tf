resource "dynatrace_document" "Block_Amazon_S3_bucket_public_access" {
  name      = "Block Amazon S3 bucket public access"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
          - id: dynatrace.aws.connector
            version: ^2.1.4
          - id: dynatrace.msteams
            version: ^2.1.5
      inputs:
        - type: connection
          schema: builtin:hyperscaler-authentication.connections.aws
          connectionFilter: value.awsWebIdentity.consumers contains 'APP:dynatrace.aws.connector'
          targets:
            - tasks.s3_block_public_access.connection
        - type: connection
          schema: app:dynatrace.msteams:connection
          targets:
            - tasks.send_alert.connectionId
      trackingId: block-public-access-for-s3-bucket
    workflow:
      title: Block Amazon S3 bucket public access
      description: Automatically blocks public access to a specified Amazon S3 bucket.
      guide: |-
        # Quick setup
        Follow these steps to get the workflow running; use the linked docs for full details.
    
        1. Grant Workflow permissions: Go to Workflows > Settings > Authorization settings and enable required permissions for running actions and reading events. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/security#user-permission
        2. Create an AWS connection: Go to Settings > Connections > [AWS](/ui/apps/dynatrace.settings/settings/dynatrace.aws.connector) > **+ Connection** and create a connection with permissions for S3 (for example, s3:PutPublicAccessBlock, s3:GetBucketPublicAccessBlock). See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/aws/aws-workflows-setup
        3. Create a Microsoft Teams connection: Create a Power Automate webhook in Microsoft Teams, then in Settings > Connections > [Microsoft Teams](/ui/apps/dynatrace.settings/settings/dynatrace.msteams) add a connection using the webhook URL. Docs: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/microsoft-teams#setup
        4. Allow external requests: Go to Settings > General > [External requests](/ui/apps/dynatrace.settings/settings/external-requests) and allow the Teams webhook domain.
        5. Configure inputs and test: Set the Bucket name in task s3_block_public_access (and adjust PublicAccessBlockConfiguration if needed). Run manually to verify, then enable triggers.
    
        # Trigger configuration
        The included Davis problem trigger is inactive by default. Update filters (categories, customFilter) to your needs and activate when ready. Alternatively, schedule or run on-demand.
    
        # About the actions
        The template uses S3 Put Public Access Block to enforce all four public access blocks on the specified bucket. On success, an adaptive card is sent to Microsoft Teams with execution details.
    
        # Additional configuration and tips
        - AWS IAM: Ensure the connection role has s3:PutPublicAccessBlock on the target bucket.
        - Directory buckets are not supported by this action.
      tasks:
        s3_block_public_access:
          name: s3_block_public_access
          description: This operation is not supported for directory buckets.
          action: dynatrace.aws.connector:s3-put-public-access-block
          input:
            schema: builtin:hyperscaler-authentication.connections.aws
            connection: ''
            PublicAccessBlockConfiguration: >-
              {
                "RestrictPublicBuckets": true,
                "BlockPublicAcls": true,
                "IgnorePublicAcls": true,
                "BlockPublicPolicy": true
              }
          position:
            x: 0
            y: 1
          predecessors: []
        send_alert:
          name: send_alert
          description: Send an alert containing a notification regarding the S3 bucket public access block
          action: dynatrace.msteams:send-message
          position:
            x: 0
            y: 2
          predecessors:
            - s3_block_public_access
          conditions:
            states:
              s3_block_public_access: OK
          input:
            connectionId: ''
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
                                          "text": "⚠️ S3 Bucket Public Access Blocked",
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
                                  "value": "{{ result('s3_block_public_access') | length }}"
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
                          "text": "The following S3 bucket(s) have been updated to block public access:",
                          "wrap": true,
                          "separator": true
                      },
                      {
                          "type": "Container",
                          "items": [
                              {
                                  "type": "TextBlock",
                                  "text": "**{{ task("s3_block_public_access").input.Bucket }}** · Public Access Blocked",
                                  "wrap": true
                              }
                          ],
                          "style": "emphasis"
                      }
                  ]
              }
      trigger:
        eventTrigger:
          isActive: false
          filterQuery: event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND (event.category == "AVAILABILITY"
            OR event.category == "CUSTOM_ALERT")
          uniqueExpression: '{{ event()["event.id"] }}-{{ "open" if event()["event.status_transition"]
            in ("CREATED", "UPDATED", "REOPENED", "REFRESHED") else "resolved" }}-{{
            event()["dt.davis.last_reopen_timestamp"] }}'
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                availability: true
                custom: true
              entityTags: {}
              customFilter: ''
              onProblemClose: false
      schemaVersion: 3
    EOT
  custom_id = "dynatrace.aws.connector.block-public-access-for-s3-bucket"
  # private = false
}
