resource "auth0_connection" "db-connection" {
  name     = "Username-Password-Authentication"
  strategy = "auth0"


  options {
    password_policy                      = "good"
    disable_signup                       = false
    disable_self_service_change_password = false
    requires_username                    = false

    password_complexity_options {
      min_length = 8
    }
    password_history {
      enable = false
    }
    password_dictionary {
      enable = false
    }
    password_no_personal_info {
      enable = false
    }
  }
}

import {
  to = auth0_connection.db-connection
  id = "con_hSpOGmbptAQuUL1F"

}