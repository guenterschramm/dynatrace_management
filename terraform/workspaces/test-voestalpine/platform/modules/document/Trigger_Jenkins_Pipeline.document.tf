resource "dynatrace_document" "Trigger_Jenkins_Pipeline" {
  name      = "Trigger Jenkins Pipeline"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: trigger-jenkins-pipeline
      dependencies:
        apps:
        - id: dynatrace.email
          version: ^1.8.6-dev.20260121T151919+58cf5c55
        - id: dynatrace.jenkins.connector
          version: ^2.1.8-dev.20260121T143313+ee550d4c
      inputs:
      - type: connection
        schema: app:dynatrace.jenkins.connector:connection
        targets:
        - tasks.trigger_build_1.connection
    workflow:
      title: Trigger Jenkins Pipeline
      description: ''
      schemaVersion: 3
      trigger:
        onDemandTrigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
          # Setup
    
          If your environment doesn't already have a Jenkins connection, you'll need to create one.
    
          For detailed instructions, see [Set up Jenkins integration](https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/jenkins).
    
          # Trigger
    
          By default, this workflow uses an on-demand [trigger](?trigger=).
          You can leave it as-is to trigger the workflow manually or via API.
          You can update the trigger to run on a schedule (for example, daily or weekly at a specific time).
    
          # Configure Jenkins pipeline
    
          In the task [Trigger Jenkins Pipeline](?task=trigger_build_1&tab=input), configure:
          - **jobPath**: Set the path to your Jenkins pipeline
          - **awaitResult**: Enable to wait for the pipeline to complete before finishing the workflow
          - **buildParameters**: Update parameters to pass to your Jenkins pipeline
    
          # Configure email notification
    
          After the Jenkins pipeline completes, an email notification is sent.
    
          In the task [Send email](?task=send_email_1&tab=input):
          - Replace the email address in the **To** field with your recipient(s)
          - Update the message content to match your notification requirements
      tasks:
        trigger_build_1:
          name: trigger_build_1
          input:
            jobPath: /job/MyPipeline
            connection: ''
            awaitResult: true
            buildParameters:
            - key: version
              value: dev
            - key: environment
              value: staging
          action: dynatrace.jenkins.connector:trigger-build
          position:
            x: 0
            y: 1
          description: Triggers a Jenkins pipeline build and optionally awaits the result
          predecessors: []
        send_email_1:
          name: send_email_1
          input:
            cc: []
            to:
            - your.email@example.com
            bcc: []
            content: 'Jenkins pipeline build completed.\n\nStatus: {{ result("trigger_build_1")["state"]}}'
            subject: Jenkins Pipeline Build Notification
          action: dynatrace.email:send-email
          position:
            x: 0
            y: 2
          conditions:
            states:
              trigger_build_1: SUCCESS
          description: Send email notification
          predecessors:
          - trigger_build_1
    EOT
  custom_id = "dynatrace.jenkins.connector.trigger-jenkins-pipeline"
  # private = false
}
