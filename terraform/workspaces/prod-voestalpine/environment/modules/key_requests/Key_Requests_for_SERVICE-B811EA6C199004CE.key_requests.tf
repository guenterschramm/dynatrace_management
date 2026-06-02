resource "dynatrace_key_requests" "Key_Requests_for_SERVICE-B811EA6C199004CE" {
  names   = [ "/OTCS/llisapi.dll/open/<id>", "/OTCS/llisapi.dll/api/v2/nodes/<id>", "/OTCS/llisapi.dll - ll - browse", "/OTCS/llisapi.dll - srch.SearchCache", "/OTCS/llisapi.dll - search" ]
  service = "SERVICE-B811EA6C199004CE"
  key_request_ids = {
    "/OTCS/llisapi.dll/open/<id>"          = "SERVICE_METHOD-FCD3D21238FD7F90"
    "/OTCS/llisapi.dll/api/v2/nodes/<id>"  = "SERVICE_METHOD-B129C2752942626D"
    "/OTCS/llisapi.dll - ll - browse"      = "SERVICE_METHOD-C87E73C300AD50FA"
    "/OTCS/llisapi.dll - srch.SearchCache" = "SERVICE_METHOD-59A5ECBBBA8F0FC5"
    "/OTCS/llisapi.dll - search"           = "SERVICE_METHOD-2D8812817767A7E8"
  }
}
