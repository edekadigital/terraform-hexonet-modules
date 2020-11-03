# terraform-hexonet-modules
Terraform modules to facilitate Hexonet Domain Administration

### Motivation
Hexonet entries by hand are dangerous and time consuming.
At Edeka Digital GmbH we have several Scenarios 
where we want to automate Domain Management and Configuration.

The inital outcome is this module set. 
If you have more Ideas - Pull Requests are welcome!

### Hexonet API Information
https://wiki.hexonet.net/wiki/Domain_API
https://wiki.hexonet.net/images/0/01/DOMAIN_API_Reference.pdf

```
module "domain_dns" {
  source = "https://github.com/edekadigital/terraform-hexonet-modules/terraform-hexonet-modifydomain"
  domain = "my-cool-domain.com"
  s_login = "my-username"
  s_pw = "my-password"
  nameserver0 = "my-ns0.cool.com"
  nameserver1 = "my-ns1.cool.com"
  nameserver2 = "my-ns2.cool.com"
  nameserver3 = "my-ns3.cool.com"
}
```