resource "dynatrace_automation_workflow" "Comments_or_Creates_a_Service_Now_incident_based_on_problem_trigger" {
  description            = "Searches for an Incident in ServiceNow, and if it exists, comments on it, otherwise creates a new one"
  type                   = "STANDARD"
  actor                  = "db1a0258-d161-4101-9888-7c15a809a5bf"
  guide                  =<<-EOT
    # Setup
    
    This workflow requires a ServiceNow connection.
    
    **ServiceNow connection**: If your environment doesn't already have a ServiceNow connection, you'll need to create one. Go to **Settings** > **Connections** > [ServiceNow](/ui/apps/dynatrace.settings/settings/dynatrace.servicenow) > **+ Connection**, provide your ServiceNow instance details, and click **Create**. For details on how to configure the integration, see [ServiceNow documentation](https://dt-url.net/it03naf).
    
    # Trigger
    
    By default, this workflow uses a problem [trigger](?trigger=) configured to activate on active problems with all categories, including analysis-ready events.
    
    To customize the trigger:
    - **Filter by severity**: Modify the filter query to include specific severity levels
    - **Entity filtering**: Add entity tag filters in the trigger configuration to limit the workflow to specific services or hosts
    - **Include problem closure**: Enable `onProblemClose` in trigger configuration to track when problems resolve
    
    To test the trigger configuration, select **Query past events** to view recent problem events that would have triggered this workflow.
    
    # Search for existing incident
    
    In the task [search_incident](?task=search_incident&tab=input), the workflow searches for an existing ServiceNow incident using the correlation ID pattern `DT_<event.id>`:
    
    - **Correlation ID**: Automatically links incidents to Dynatrace problems using the event ID
    - **Result limit**: Set to `1` to find only the most recent matching incident
    - **Custom search**: Modify `sysparmQuery` to add additional search criteria (for example, `^active=true` to search only active incidents)
    
    If a matching incident is found, the workflow proceeds to comment on it. If not found, it creates a new incident instead.
    
    # Comment on existing incident
    
    In the task [comment_on_incident](?task=comment_on_incident&tab=input), the workflow adds a comment to the found incident:
    
    - **Comment text**: Update the `comments` field value to customize the comment content
    - **Additional fields**: Add more fields to update other incident properties along with the comment
    - **Conditional execution**: This task only runs if the search finds an incident (OK state)
    
    # Create new incident
    
    In the task [create_new_incident](?task=create_new_incident&tab=input), the workflow creates a new incident if no existing one was found:
    
    - **Impact** and **Urgency**: Set values from 1 (high) to 3 (low) to determine incident priority
    - **Category** and **Subcategory**: Adjust to match your ServiceNow configuration
    - **Assignment group** and **Caller**: Optionally specify who the incident should be assigned to
    - **Configuration item**: Link the incident to a specific CI by setting `cmdb_ci`
    - **Conditional execution**: This task only runs if commenting failed (NOK state), meaning no incident was found
  EOT
  hourly_execution_limit = 1000
  input                  = jsonencode({})
  # is_deployed          = true
  owner                  = "db1a0258-d161-4101-9888-7c15a809a5bf"
  owner_type             = "USER"
  # private              = true
  title                  = "Comments or Creates a Service Now incident based on problem trigger"
  tasks {
    task {
      name        = "search_incident"
      description = "Searches for an incident in ServiceNow"
      action      = "dynatrace.servicenow:snow-search-incidents"
      input       = jsonencode({
              "connectionId": "vu9U3hXa3q0AAAABACNhcHA6ZHluYXRyYWNlLnNlcnZpY2Vub3c6Y29ubmVjdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJDE5MGZkYjNjLTY4OTUtM2VmYS04MWI1LTY5M2QyNzFiYWQ2M77vVN4V2t6t",
              "sysparmFields": "",
              "sysparmLimit": "1",
              "sysparmQuery": "correlation_id=DT_{{ event()[\"event.id\"] }}"
        })
    }
    task {
      name        = "comment_on_incident"
      description = "Comments on the incident"
      action      = "dynatrace.servicenow:snow-update-record"
      input       = jsonencode({
              "connectionId": "vu9U3hXa3q0AAAABACNhcHA6ZHluYXRyYWNlLnNlcnZpY2Vub3c6Y29ubmVjdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJDE5MGZkYjNjLTY4OTUtM2VmYS04MWI1LTY5M2QyNzFiYWQ2M77vVN4V2t6t",
              "fields": [
                    {
                          "id": "36c3e9ce-6029-44ac-be25-7ea9404e4f48",
                          "key": "comments",
                          "type": "journal_input",
                          "value": "Comment on incident: {{ result(\"search_incident\")[0].sys_id }}"
                    },
                    {
                          "id": "ab7ac4ac-30b5-44fb-aa61-e626151de236",
                          "key": "number",
                          "type": "string",
                          "value": "{{ result(\"search_incident\")[0].number }}"
                    }
              ],
              "sysId": "{{ result(\"search_incident\")[0].sys_id }}",
              "tableName": "incident"
        })
      conditions {
        states = {
          search_incident = "OK"
        }
      }
    }
    task {
      name        = "create_new_incident"
      description = "Creates a new incident, only if comment failed"
      action      = "dynatrace.servicenow:snow-create-record"
      input       = jsonencode({
              "connectionId": "vu9U3hXa3q0AAAABACNhcHA6ZHluYXRyYWNlLnNlcnZpY2Vub3c6Y29ubmVjdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJDE5MGZkYjNjLTY4OTUtM2VmYS04MWI1LTY5M2QyNzFiYWQ2M77vVN4V2t6t",
              "fields": [
                    {
                          "id": "bd7cc13d-91dc-4967-ad7c-f3ceab31cb0f",
                          "key": "assignment_group",
                          "value": ""
                    },
                    {
                          "id": "ce00daa4-89ec-49bc-a07d-ce633efe6c18",
                          "key": "caller_id",
                          "value": ""
                    },
                    {
                          "id": "14dd65f0-f7c1-494a-99ac-c0699683933e",
                          "key": "category",
                          "value": "inquiry"
                    },
                    {
                          "id": "98f0f4ae-1fb1-454e-af26-c178ca3ee438",
                          "key": "subcategory",
                          "value": "internal application"
                    },
                    {
                          "id": "2c26b94c-7be9-42b4-aca6-05850ba0b250",
                          "key": "correlation_id",
                          "value": "DT_{{ event()[\"event.id\"] }}"
                    },
                    {
                          "id": "66469c6c-88c6-43d9-b0e5-a7b8f217d30f",
                          "key": "impact",
                          "value": "3"
                    },
                    {
                          "id": "6d20712d-07e6-47c9-ba6c-3bc0de3d738c",
                          "key": "short_description",
                          "value": "{{ event()[\"event.category\"] }} {{ event()[\"event.name\"] }}"
                    },
                    {
                          "id": "5d96dab9-6fad-4313-aa52-46b84ae99a83",
                          "key": "description",
                          "value": "Event details: {{ event() }}"
                    },
                    {
                          "id": "fb432bcc-0b3b-4c1e-885b-f90f3e57c9a8",
                          "key": "urgency",
                          "value": "3"
                    },
                    {
                          "id": "e676c12a-5bdc-4137-b289-54bdb7d47ce9",
                          "key": "cmdb_ci",
                          "value": ""
                    },
                    {
                          "id": "43476524-4e7f-4282-b46b-3a97ce8ed34e",
                          "key": "business_service",
                          "value": ""
                    }
              ],
              "tableName": "incident"
        })
      conditions {
        states = {
          comment_on_incident = "NOK"
        }
        else = "STOP"
      }
    }
  }
  trigger {
    event {
      active = true
      config {
        davis_problem {
          analysis_ready    = true
          # custom_filter   = ""
          entity_tags_match = "any"
          on_problem_close  = true
          entity_tags = {
            "Application" = "Webhosting PAM xECM Steel"
          }
          categories {
            availability             = true
            # custom                 = false
            error                    = true
            # info                   = false
            # monitoring_unavailable = false
            resource                 = true
            slowdown                 = true
          }
        }
      }
    }
  }
}
