module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "kaleb_wade+sanbox-test-02@mckinsey.com"
    AccountName               = "sandbox-aft-test-02"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "kaleb_wade@mckinsey.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT-02"
  }

  change_management_parameters = {
    change_requested_by = "Kaleb Wade"
    change_reason       = "Second test account deployment via AFT"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "developer-sandbox"
}
