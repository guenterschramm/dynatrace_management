resource "dynatrace_document" "Notify_on_failed_GitHub_Actions_run" {
  name      = "Notify on failed GitHub Actions run"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: notify-on-failed-github-actions-run
      dependencies:
        apps:
        - id: dynatrace.github.connector
          version: ^2.7.2-dev.20260205T064944+f0160c67
        - id: dynatrace.slack
          version: ^3.3.1-dev.20260206T091013+fee6d64d
      inputs:
      - type: connection
        schema: app:dynatrace.github.connector:connection
        targets:
        - tasks.get_latest_workflow_run_main.connectionId
      - type: connection
        schema: app:dynatrace.slack:connection
        targets:
        - tasks.send_summary_to_slack.connection
    workflow:
      title: Notify on failed GitHub Actions run
      description: ''
      schemaVersion: 3
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Notify on failed GitHub Actions run
        This workflow fetches the latest GitHub workflow run for branch main and sends a summary to Slack if it failed.
    
        # Setup
        1. **Set up GitHub Connector**\
             If you have not already you need to [set up a connection](/ui/apps/dynatrace.settings/settings/dynatrace.github.connector) with GitHub. The token requires at least Actions > Read perimission. Learn more about [GitHub Connector](https://dt-url.net/qf23026) setup in the official Dynatrace documentation.
        1. **Set up Slack Connector**\
             If you have not already you need to [set up a connection](/ui/apps/dynatrace.settings/settings/dynatrace.slack) with Slack. Learn more about [Slack Connector](https://dt-url.net/ve82es9) setup in the official Dynatrace documentation.
    
        # Trigger Configuration
        By default, this workflow uses an on-demand [trigger](?trigger=).
            You can leave it as-is to trigger the workflow manually or via API.
            You can update the trigger to run on a schedule (for example, daily or weekly at a specific time).
    
        # Get latest workflow run main
        1. **Customize repository details** for [get_latest_workflow_run_main](?task=get_latest_workflow_run_main)\
             A repository is uniquely identified by its owner and repository name.
        2. **Customize workflow details** for [get_latest_workflow_run_main](?task=get_latest_workflow_run_main)\
             Specify which workflow you are interested in. If your repository uses a branch other than `main` make sure to change it accordingly. Leaving the branch field empty is also an option but this means the action will fetch the latest workflow run of *any* branch.
    
        # Send summary to Slack
    
        **Customize channel** for [send_summary_to_slack](?task=send_summary_to_slack)\
        Select a channel where you want to post the summary to. Please note for private channels to show up in the list you need to invite the Slack app that is referenced by the connection first.
    
        # Customization Examples
        Consider to extend this workflow to get latest workflow run information for multiple repositories and set up [Ownership](https://dt-url.net/ih0266u) to find reponsible teams' Slack channels to notify.
    
        # Next steps
        * Turn on notifications 🔔 to be notified about workflow failures via Email.
        * Modify the message in [send_summary_to_slack](?task=send_summary_to_slack) to better fit your use case.
    
        # Learn more
        * [GitHub Connector](https://dt-url.net/qf23026)
        * [Slack Connector](https://dt-url.net/ve82es9)
      tasks:
        send_summary_to_slack:
          name: send_summary_to_slack
          input:
            channel:
            message: |
              [CI][FAIL] {{ result("get_latest_workflow_run_main")["workflowRun"]["repository"]["full_name"] }} – {{ result("get_latest_workflow_run_main")["workflowRun"]["name"] }} (#{{ result("get_latest_workflow_run_main")["workflowRun"]["run_number"] }})
    
              {% set run = result("get_latest_workflow_run_main")["workflowRun"] %}
              {% set commit = run.head_commit %}
              {% set repo = run.repository %}
    
              Details:
                *Workflow name*: {{ run.name }}
                *Status*: {{ run.status }} ({{ run.conclusion }})
                *Run number*: {{ run.run_number }}
                *Event type*: {{ run.event }}
    
              Repository:
                *Name*: {{ repo.full_name }}
                *URL*: {{ repo.html_url }}
                *Branch*: {{ run.head_branch }}
    
              Commit details:
                *Commit SHA*: {{ commit.id }}
                *Short SHA*: {{ commit.id[0:7] }}
                *Commit message*: {{ commit.message | replace('\n\n', ' – ') }}
                *Author*: {{ commit.author.name }} <{{ commit.author.email }}>
                *Committer*: {{ commit.committer.name }} <{{ commit.committer.email }}>
                *Timestamp*: {{ commit.timestamp }}
    
              Trigger:
                *Triggered by*: {{ run.actor.login }}
                *Actor profile*: {{ run.actor.html_url }}
    
              Timestamps:
                Created at: {{ run.created_at }}
                Run started at: {{ run.run_started_at }}
                Last updated at: {{ run.updated_at }}
    
              Additional details:
                Run overview: {{ run.html_url }}
            reaction: []
            connection: ''
            channelType: id
            executionDate: '{{ execution().started_at }}'
            appendToThread: false
            replyBroadcast: false
            selectedRequestType: 0
            attachmentToggleValue: none
          action: dynatrace.slack:slack-send-message
          position:
            x: 0
            y: 2
          conditions:
            custom: '{{ result("get_latest_workflow_run_main")["workflowRun"]["conclusion"] != "success" }}'
            states:
              get_latest_workflow_run_main: OK
          description: Send a message to a Slack workspace
          predecessors:
          - get_latest_workflow_run_main
        get_latest_workflow_run_main:
          name: get_latest_workflow_run_main
          input:
            owner:
            branchName: main
            repository:
            workflowId:
            connectionId: ''
          action: dynatrace.github.connector:get-latest-workflow-run
          position:
            x: 0
            y: 1
          description: Retrieves the latest workflow run for a specified workflow
          predecessors: []
    EOT
  custom_id = "dynatrace.github.connector.notify-on-failed-github-actions-run"
  # private = false
}
