resource "dynatrace_iam_policy" "Test_Policy_for_smartscape" {
  name            = "Test_Policy_for_smartscape"
  # description   = ""
  account         = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment   = ""
  statement_query =<<-EOT
    //States
    ALLOW state:app-states:delete, state:app-states:read, state:app-states:write, state:user-app-states:read, state:user-app-states:write, state:user-app-states:delete, state-management:user-app-states:delete, state-management:user-app-states:delete-all;
    
    //Documents
    ALLOW document:documents:read, document:documents:write, document:documents:delete, document:environment-shares:read, document:environment-shares:write, document:environment-shares:claim, document:environment-shares:delete, document:direct-shares:read, document:direct-shares:write, document:direct-shares:delete, document:trash.documents:read, document:trash.documents:restore, document:trash.documents:delete;
    
    //Unified analysis screens
    ALLOW unified-analysis:screen-definition:read;
    
    //Live Debugger
    ALLOW dev-obs:breakpoints:set;
    
    //Grail
    ALLOW storage:bucket-definitions:read;
    ALLOW storage:fieldset-definitions:read;
    ALLOW storage:filter-segments:read, storage:filter-segments:write, storage:filter-segments:delete;
    ALLOW storage:logs:read;
    ALLOW storage:events:read;
    ALLOW storage:buckets:read;
    ALLOW storage:metrics:read;
    ALLOW storage:entities:read;
    ALLOW storage:fieldsets:read;
    ALLOW storage:smartscape:read;
    ALLOW storage:user.sessions:read;
    ALLOW storage:user.events:read;
    ALLOW storage:spans:read;
    ALLOW storage:security.events:read;
    ALLOW storage:files:read;
    ALLOW storage:bizevents:read;
    
    
    //OpenPipeline
    ALLOW openpipeline:configurations:read;
    
    //Hub
    ALLOW hub:catalog:read;
    
    //AppEngine
    ALLOW app-engine:apps:run, app-engine:functions:run, app-engine:edge-connects:read;
    
    //Notifications
    ALLOW email:emails:send, notification:self-notifications:read, notification:self-notifications:write, notification:notifications:read, notification:notifications:write;
    
    //AutomationEngine
    ALLOW automation:workflows:read, automation:calendars:read, automation:rules:read;
    ALLOW automation:workflows:write WHERE automation:workflow-type = "SIMPLE";
    ALLOW automation:workflows:run;
    
    //Davis
    ALLOW davis:analyzers:read, davis:analyzers:execute;
    
    //Davis Copilot
    ALLOW davis-copilot:conversations:execute, davis-copilot:nl2dql:execute, davis-copilot:dql2nl:execute, davis-copilot:document-search:execute;
    
    //Settings
    ALLOW settings:objects:read, settings:objects:write, settings:schemas:read, app-settings:objects:read;
    
    //Classics
    ALLOW environment:roles:viewer, environment:roles:view-security-problems;
    
    //Geolocations
    ALLOW geolocation:locations:lookup;
    
    // Vulnerability service
    ALLOW vulnerability-service:vulnerabilities:read;
    
    // Security Intelligence Service
    ALLOW security-intelligence:enrichments:run;
    
    //SLOs
    ALLOW slo:slos:read, slo:slos:write, slo:objective-templates:read;
    
    //BusinessInsights
    ALLOW insights:opportunities:read;
    ALLOW insights:moments:read;
    
    //Extensions
    ALLOW extensions:definitions:read;
    
    //App Settings
    ALLOW app-settings:objects:read,app-settings:objects:write;
  EOT
}
