module "sandbox-aft-test-06" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "kaleb_wade+sanbox-test-06@mckinsey.com"
    AccountName               = "sandbox-aft-test-06"
    ManagedOrganizationalUnit = "Sandbox-AFT"
    SSOUserEmail              = "kaleb_wade@mckinsey.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT-06"
  }

  change_management_parameters = {
    change_requested_by = "Kaleb Wade"
    change_reason       = "Test account deployment via AFT"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "developer-sandbox"
}
