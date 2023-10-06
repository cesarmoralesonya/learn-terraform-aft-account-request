module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jenkins@moralescorp.xyz"
    AccountName               = "Jenkins"
    ManagedOrganizationalUnit = "DevOps"
    SSOUserEmail              = "jenkins@moralescorp.xyz"
    SSOUserFirstName          = "Jenkins"
    SSOUserLastName           = "MoralesCorp"
  }

  account_tags = {
    "Environment" = "operations"
  }

  change_management_parameters = {
    change_requested_by = "Cesar Morales"
    change_reason       = "Account for jenkins server"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Jenkins"
}
