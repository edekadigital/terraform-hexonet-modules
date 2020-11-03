#https://wiki.hexonet.net/wiki/Domain_API
#https://wiki.hexonet.net/images/0/01/DOMAIN_API_Reference.pdf
data "http" "api_call" {
  url = "${local.command-url}&${local.query_params}"
  request_headers = {
    Accept = "text/*"
  }
}