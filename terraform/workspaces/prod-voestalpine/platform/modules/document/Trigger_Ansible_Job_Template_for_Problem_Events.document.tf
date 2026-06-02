resource "dynatrace_document" "Trigger_Ansible_Job_Template_for_Problem_Events" {
  name      = "Trigger Ansible Job Template for Problem Events"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingID: 'trigger-ansible-job-template'
      dependencies:
        apps:
        - id: dynatrace.email
          version: ^1.8.5
        - id: dynatrace.redhat.ansible
          version: ^2.1.7
      inputs:
      - type: connection
        schema: app:dynatrace.redhat.ansible:automation-controller.connection
        targets:
        - tasks.provision_additional_servers.connectionId
        - tasks.get_provisioning_details_of_ansible_job.connectionId
    workflow:
      title: Trigger Ansible Job Template for Problem Events
      description: 'This workflow template triggers an Ansible Job Template when a problem event of type "SLOWDOWN" is detected.'
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: true
          filterQuery: event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND (event.category == "SLOWDOWN")
          uniqueExpression: '{{ event()["event.id"] }}-{{ "open" if event()["event.status_transition"]
            in ("CREATED", "UPDATED", "REOPENED", "REFRESHED") else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"]
            }}'
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                slowdown: true
              entityTags: {}
              customFilter: ''
              onProblemClose: false
              entityTagsMatch: all
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |    
        # Setup
    
        You need to setup a connection the Red Hat Ansible Automation Controller. 
        For details on how to configure the connection, see [Red Hat Ansible connection](https://dt-url.net/a303xin).
    
        # Trigger
    
        By default, this workflow uses a problem [trigger](?trigger=) that triggers on events of category "SLOWDOWN".
    
        To modify the trigger:
        - **Problem state**: Choose `active` to notify only when problems open or reopen, or `active or closed` to also notify when problems resolve.
        - **Event category**: Keep `SLOWDOWN`, or add other categories like `ERROR`, `SLOWDOWN`, `RESOURCE`, `CUSTOM`, `MONITORING_UNAVAILABLE`, or `INFO`.
        - **Affected entities**: Use entity tags to limit notifications to specific services, applications, or hosts.
     
        # Configure the launch-job-template action
        
        The [provision_additional_servers](?task=provision_additional_servers&tab=input) task launches an Ansible job template. Configure the task with the ID of the job template you want 
        to launch, and optionally pass extra variables in the `extraVars` field.
          
        # Configure the get-job-status action
    
        The [get_provisioning_details_of_ansible_job](?task=get_provisioning_details_of_ansible_job&tab=input) task retrieves the status of the Ansible job. In this taks you can specify the job ID 
        from the previous task, and use the result in the email content.
    
        - **Job ID**: 
        The job ID is passed from the previous task, for example:
        ```code
        {{ result("provision_additional_servers")["id"] }}
        ```    
        
        # Configure the email action
    
        Replace the email address in the `To` field with your recipient(s) and change the message conent to your liking.
    
    
      tasks:
        send_provisioning_details:
          name: send_provisioning_details
          input:
            cc: []
            to:
            - your.mail@domain.com
            bcc: []
            content: 'Ansible job summary:
    
    
              <{{ result("get_provisioning_details_of_ansible_job")["summary_fields"]
              }}'
            subject: Details about Problem
              }}
          action: dynatrace.email:send-email
          active: true
          position:
            x: 0
            y: 3
          conditions:
            states:
              get_provisioning_details_of_ansible_job: OK
          description: Send email
          predecessors:
          - get_provisioning_details_of_ansible_job
        provision_additional_servers:
          name: provision_additional_servers
          input:
            extraVars: ''
            templateId: '7'
            awaitResult: true
            connectionId: ''
          action: dynatrace.redhat.ansible:launch-job-template
          position:
            x: 0
            y: 1
          description: Launch a job template in Red Hat Ansible Automation Controller
          predecessors: []
        get_provisioning_details_of_ansible_job:
          name: get_provisioning_details_of_ansible_job
          input:
            jobId: '{{ result("provision_additional_servers")["id"] }}'
            connectionId: ''
          action: dynatrace.redhat.ansible:list-job-status
          position:
            x: 0
            y: 2
          conditions:
            states:
              provision_additional_servers: OK
          description: List job status of Red Hat Ansible Automation Controller
          predecessors:
          - provision_additional_servers
    EOT
  custom_id = "dynatrace.redhat.ansible.trigger-ansible-job-template"
  # private = false
}
