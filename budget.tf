
resource "azurerm_consumption_budget_resource_group" "bud1" {
  name              = "example"
  resource_group_id = var.rgid

  amount     = 1
  time_grain = "Monthly"

  time_period {
    start_date = "2024-01-01T00:00:00Z"
    end_date   = "2034-01-31T00:00:00Z"
  }


  notification {
    enabled   = true
    threshold = 10.0
    operator  = "EqualTo"


    contact_emails = [
      "jorge.martinez-diaz@t-systems.com",
      "jorge.martinez-diaz@t-systems.com",
    ]


    contact_roles = [
      "Owner",
    ]
  }

  notification {
    enabled   = true
    threshold = 100.0
    operator  = "GreaterThan"

    contact_emails = [
      "jorge.martinez-diaz@t-systems.com",
      "jorge.martinez-diaz@t-systems.com",
    ]
  }
}