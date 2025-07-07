# check "web_server_check" {
#   data "http" "web_server" {
#     url                = "http://${aws_eip.public_ip.public_dns}"
#     request_timeout_ms = 2000
#     retry {
#       attempts     = 4
#       max_delay_ms = 500
#       min_delay_ms = 500
#     }
#   }

#   assert {
#     condition     = data.http.web_server.status_code == 200
#     error_message = "${data.http.web_server.url} returned an unhealthy status code"
#   }
# }
