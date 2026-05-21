resource "auth0_attack_protection" "main" {

  brute_force_protection {
    enabled      = var.brute_force_protection_enabled
    allowlist    = var.brute_force_protection_allowlist
    max_attempts = var.brute_force_max_attempts
    mode         = var.brute_force_protection_mode
    shields      = var.brute_force_protection_shields
  }

  suspicious_ip_throttling {
    enabled   = var.suspicious_ip_throttling_enabled
    shields   = var.suspicious_ip_throttling_shields
    allowlist = var.suspicious_ip_throttling_allowlist
  }

  breached_password_detection {
    enabled                      = var.breached_password_enabled
    method                       = var.breached_password_detection_method
    shields                      = var.breached_password_detection_shields
    admin_notification_frequency = var.breached_password_detection_admin_notification_frequency

  }
}
