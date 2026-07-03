resource "dynatrace_document" "Store_BizEvent_in_Amazon_S3_bucket" {
  name      = "Store BizEvent in Amazon S3 bucket"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
          - id: dynatrace.automations
            version: ^1.2538.1
          - id: dynatrace.aws.connector
            version: ^2.1.4
      inputs:
        - type: connection
          schema: builtin:hyperscaler-authentication.connections.aws
          connectionFilter: value.awsWebIdentity.consumers contains 'APP:dynatrace.aws.connector'
          targets:
            - tasks.s3_create_bucket.connection
            - tasks.s3_put_object.connection
      trackingId: store-bizevent-in-s3-bucket
    workflow:
      title: Store BizEvent in Amazon S3 bucket
      description: Fetches BizEvents from Dynatrace and stores them in an Amazon S3 bucket.
      guide: |-
        # Quick setup
        1. Grant Workflow permissions: Go to Workflows > Settings > Authorization settings and enable required permissions for running actions and reading events. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/security#user-permission
        2. Create an AWS connection: Go to Settings > Connections > [AWS](/ui/apps/dynatrace.settings/settings/dynatrace.aws.connector) > **+ Connection** with permissions for S3 (create bucket, put object). See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/aws/aws-workflows-setup
        3. Configure inputs: Provide a Bucket name (creation step included) and adjust the S3 object Key/prefix.
        4. Test and tune: Run once manually to validate end-to-end.
    
        # Trigger configuration
        No trigger is active by default. Set up a schedule (for example, daily) or run on-demand during audits and reviews.
    
        # About the DQL query
        The template runs `fetch bizevents, from: now()-1h | limit 1`. Adapt as needed:
        - Filter to specific event types, properties, or services.
        - Extend time windows and remove the `limit`.
        - Consider batching or chunking large result sets.
    
        # Additional configuration and tips
        - Governance: Apply S3 lifecycle policies and encryption.
      tasks:
        s3_create_bucket:
          name: s3_create_bucket
          description: Creates an Amazon S3 bucket
          action: dynatrace.aws.connector:s3-create-bucket
          input:
            ACL: private
            schema: builtin:hyperscaler-authentication.connections.aws
            connection: ''
          position:
            x: 0
            y: 1
        fetch_bizevents:
          name: fetch_bizevents
          description: Executes DQL query
          action: dynatrace.automations:execute-dql-query
          input:
            query: |-
              fetch bizevents, from:now() - 1h
              | limit 1
          position:
            x: 0
            y: 2
          predecessors:
            - s3_create_bucket
          conditions:
            states:
              s3_create_bucket: OK
        s3_put_object:
          name: s3_put_object
          description: Adds an object to a bucket
          action: dynatrace.aws.connector:s3-put-object
          input:
            ACL: private
            Key: '{{ now() }}'
            Body: '{{ result("fetch_bizevents").records[0] | string }}'
            schema: builtin:hyperscaler-authentication.connections.aws
            connection: ''
            ContentType: JSON
            Bucket: '{{ task("s3_create_bucket").input.Bucket }}'
          position:
            x: 0
            y: 3
          predecessors:
            - fetch_bizevents
          conditions:
            states:
              fetch_bizevents: OK
            custom: '{{ result("fetch_bizevents").records | length > 0 }}'
            else: SKIP
      trigger: {}
      schemaVersion: 3
    EOT
  custom_id = "dynatrace.aws.connector.store-bizevent-in-s3-bucket"
  # private = false
}
