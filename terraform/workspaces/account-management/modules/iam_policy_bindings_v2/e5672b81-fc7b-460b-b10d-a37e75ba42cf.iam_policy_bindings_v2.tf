resource "dynatrace_iam_policy_bindings_v2" "e5672b81-fc7b-460b-b10d-a37e75ba42cf" {
  # account   = ""
  environment = "uqy31769"
  group       = "e5672b81-fc7b-460b-b10d-a37e75ba42cf"
  policy {
    boundaries = [ "e7969de8-ecde-4350-922b-daa0a8cc0fff", "793e4a8c-b249-44c2-9884-a42126ec63d9" ]
    id         = "cdc83ae6-6d0c-4379-9216-731b23fa4831#-#global#-#global"
  }
  policy {
    boundaries = [ "e7969de8-ecde-4350-922b-daa0a8cc0fff", "793e4a8c-b249-44c2-9884-a42126ec63d9" ]
    id         = "5d4c420b-131e-48ee-9526-beef01787968#-#global#-#global"
  }
  policy {
    boundaries = [ "0df338fe-4b27-4667-aedf-1fd73ca9991f", "78aefcdb-7ca7-48b0-b957-5aae711f49e8" ]
    id         = "d37cb6b2-6d9e-47a2-92a1-c282c9fb98d3#-#account#-#c65530cc-1621-455c-989d-22e43b2c00f5"
  }
  policy {
    boundaries = [ "78aefcdb-7ca7-48b0-b957-5aae711f49e8" ]
    id         = "f8ee1571-9536-4d87-970d-e2d846e87b42#-#account#-#c65530cc-1621-455c-989d-22e43b2c00f5"
  }
  policy {
    boundaries = [ "e7969de8-ecde-4350-922b-daa0a8cc0fff", "793e4a8c-b249-44c2-9884-a42126ec63d9" ]
    id         = "2531f5a6-330e-4cf3-853f-f0d17403d9d8#-#global#-#global"
  }
}
