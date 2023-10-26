# #########################################
# ## Sandbox-AFT-Test-03
# #########################################
# locals {

#   sso_user_email      = "kaleb_wade@mckinsey.com"
#   managed_ou          = "Sandbox-AFT"
#   sso_user_first_name = "Sandbox"
#   sso_user_last_name  = "AFT"

#   sandbox-aft-test-03 = templatefile("${path.module}/__template.tftpl", {
#     module_name                 = "sandbox-aft-test-03"
#     account_email               = "kaleb_wade+sanbox-test-03@mckinsey.com",
#     account_name                = "sandbox-aft-test-03",
#     managed_ou                  = local.managed_ou,
#     sso_user_email              = local.sso_user_email,
#     sso_user_first_name         = local.sso_user_first_name,
#     sso_user_last_name          = local.sso_user_last_name,
#     account_customizations_name = "developer-sandbox"
#   })
# }

# resource "local_file" "sandbox-aft-test-03" {
#   content  = local.sandbox-aft-test-03
#   filename = "../sandbox-aft-test-03.tf"
# }
# #########################################
# #########################################


#########################################
## Sandbox-AFT-Test-04
#########################################
locals {

  aft-request-content = templatefile("${path.module}/__template.tftpl", {
    module_name                 = var.account_name,
    account_email               = var.account_email,
    account_name                = var.account_name,
    managed_ou                  = var.managed_ou,
    sso_user_email              = var.sso_user_email,
    sso_user_first_name         = var.sso_user_first_name,
    sso_user_last_name          = var.sso_user_last_name,
    account_customizations_name = var.account_customizations_name
  })
}

resource "local_file" "aft-request-file" {
  content  = local.aft-request-content
  filename = "../${var.account_name}.tf"
}
#########################################
#########################################
