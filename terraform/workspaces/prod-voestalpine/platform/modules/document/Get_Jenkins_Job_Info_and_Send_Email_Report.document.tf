resource "dynatrace_document" "Get_Jenkins_Job_Info_and_Send_Email_Report" {
  name      = "Get Jenkins Job Info and Send Email Report"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: get-job-info
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
        - tasks.get_job_info_1.connection
    workflow:
      title: Get Jenkins Job Info and Send Email Report
      description: ''
      schemaVersion: 3
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
          # Setup
    
          If your environment doesn't already have a Jenkins connection, you'll need to create one.
    
          1. Go to **Settings** > **Connections** > [Jenkins](/ui/apps/dynatrace.settings/settings/dynatrace.jenkins) > **+ Connection**
          2. Enter your Jenkins server URL and credentials
          3. Select **Create**
    
          For detailed instructions, see [Set up Jenkins integration](https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/jenkins).
    
          # Trigger configuration
    
          By default, this workflow uses an on-demand [trigger](?trigger=).
    
          You can leave it as-is to trigger the workflow manually or via API, or you can update the trigger to run on a schedule (for example, daily or weekly at a specific time).
    
          # Configure the email recipient
    
          In the task [send_email](?task=send_email_1&tab=input), update the **To** field with your recipient email address(es).
    
          You can also customize the message content to match your reporting needs.
      tasks:
        send_email_1:
          name: send_email_1
          input:
            cc: []
            to:
            - your.name@example.com
            bcc: []
            content: 'Health report score: {{ result("get_job_info_1")["healthReport"][0].score}}
    
    
              Last Build #: {{ result("get_job_info_1")["lastBuild"]["number"]}}
    
              Last Successful build #: {{ result("get_job_info_1")["lastSuccessfulBuild"]["number"]
              }}'
            subject: Build report
          action: dynatrace.email:send-email
          position:
            x: 0
            y: 2
          conditions:
            states:
              get_job_info_1: OK
          description: Send email
          predecessors:
          - get_job_info_1
        get_job_info_1:
          name: get_job_info_1
          input:
            jobPath: /job/luminux-e2e-test
            connection: ''
          action: dynatrace.jenkins.connector:get-job-info
          position:
            x: 0
            y: 1
          description: 'Retrieves relevant information to a build job, eg.: build history,
            last successful build, etc.'
          predecessors: []
    EOT
  custom_id = "dynatrace.jenkins.connector.get-job-info"
  # private = false
}
