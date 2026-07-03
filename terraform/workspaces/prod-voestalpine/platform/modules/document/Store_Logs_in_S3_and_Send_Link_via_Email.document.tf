resource "dynatrace_document" "Store_Logs_in_S3_and_Send_Link_via_Email" {
  name      = "Store Logs in S3 and Send Link via Email"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
          - id: dynatrace.automations
            version: ^1.2632.0
          - id: dynatrace.aws.connector
            version: ^2.1.4
          - id: dynatrace.email
            version: ^1.8.5
      inputs:
        - type: connection
          schema: builtin:hyperscaler-authentication.connections.aws
          connectionFilter: value.awsWebIdentity.consumers contains 'APP:dynatrace.aws.connector'
          targets:
            - tasks.s3_create_bucket.connection
            - tasks.s3_put_object.connection
      trackingId: store-logs-in-s3-and-email-link
    workflow:
      title: Store logs in S3 and send link via email
      description: Stores logs from Dynatrace in an Amazon S3 bucket and sends an email with a link to the stored object.
      guide: |-
        # Quick setup
        1. Grant Workflow permissions: Go to Workflows > Settings > Authorization settings and enable required permissions for running actions and reading events. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/security#user-permission
        2. Create an AWS connection: Go to Settings > Connections > [AWS](/ui/apps/dynatrace.settings/settings/dynatrace.aws.connector) > **+ Connection** with permissions for S3 (create bucket, put object). See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/aws/aws-workflows-setup
        3. Configure Email sending: Ensure the Dynatrace Email app is installed and allowed to send to your recipients. Docs: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/email
        4. Configure [s3_create_bucket](?task=s3_create_bucket&tab=input) action: provide a Bucket name, region, and adjust the S3 object Key.
        5. Configure [send_email](?task=send_email&tab=input) action, set the email subject/content as needed.
        5. Test and tune: Run once manually and confirm the S3 object and email delivery.
    
        # Trigger configuration
        No trigger is active by default. Add a schedule for periodic archiving or run on-demand during investigations.
    
        # About the DQL query
        The template uses `fetch logs, from: now()-1h | limit 1` as a minimal example. Adapt it:
        - Extend the time window and remove `limit`.
        - Filter to specific apps, tenants, or loglevels.
        - Format or compress content before upload if desired.
    
        # Additional configuration and tips
        - Security: Enable bucket encryption and limit access via bucket policies.
        - Organization: Use date-based prefixes (for example, `logs/YYYY/MM/DD/`) for sorting and lifecycle policies.
        - Cost: Add lifecycle rules to transition older objects to infrequent access/Glacier.
      schemaVersion: 3
      trigger: {}
      type: STANDARD
      hourlyExecutionLimit: 100
      tasks:
        s3_create_bucket:
          name: s3_create_bucket
          description: Create Amazon S3 bucket to store logs
          action: dynatrace.aws.connector:s3-create-bucket
          input:
            connection: ''
            schema: builtin:hyperscaler-authentication.connections.aws
          position:
            x: 0
            y: 1
          conditions:
            else: SKIP
        fetch_logs:
          name: fetch_logs
          description: Fetch logs from the last hour
          action: dynatrace.automations:execute-dql-query
          input:
            query: |-
              fetch logs, from:now() - 1h
              | limit 1
          position:
            x: 0
            y: 2
          conditions:
            states:
              s3_create_bucket: OK
          predecessors:
            - s3_create_bucket
        s3_put_object:
          name: s3_put_object
          description: Upload log entry to S3 bucket
          action: dynatrace.aws.connector:s3-put-object
          input:
            Bucket: "{{ task('s3_create_bucket').input.Bucket }}"
            Key: 'logs/new-log.json'
            Body: '{{ result("fetch_logs").records[0] | string }}'
            ContentType: JSON
            connection: ''
            schema: builtin:hyperscaler-authentication.connections.aws
          position:
            x: 0
            y: 3
          conditions:
            else: SKIP
            custom: '{{ result("fetch_logs").records | length > 0 }}'
            states:
              fetch_logs: OK
          predecessors:
            - fetch_logs
        send_email:
          name: send_email
          description: Send email notification with S3 bucket location
          action: dynatrace.email:send-email
          input:
            subject: New log entry available
            content: |-
              A log file has been uploaded to Amazon S3:
              https://{{ task('s3_put_object').input.region }}.console.aws.amazon.com/s3/buckets{{ result("s3_create_bucket").Location }}?region={{ task('s3_put_object').input.region }}&tab=overview&prefix={{ task('s3_put_object').input.Key }}
          position:
            x: 0
            y: 4
          conditions:
            states:
              s3_put_object: OK
          predecessors:
            - s3_put_object
    EOT
  custom_id = "dynatrace.aws.connector.send-log-s3-bucket-via-email"
  # private = false
}
