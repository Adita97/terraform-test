## ----------------------------------------------------------------------------------------------------------------------
# tenant.tf
# ----------------------------------------------------------------------------------------------------------------------

variable "auth0_domain" {
  type = string
}

variable "auth0_custom_domain" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "friendly_name" {
  type = string
}
variable "dummy_app_callbacks" {
  type = list(string)
}

variable "dummy_app_allowed_logout_urls" {
  type = list(string)
}

variable "enabled_locales" {
  type = list(string)
}

variable "idle_session_lifetime" {
  type = string
}

variable "session_lifetime" {
  type = string
}

#BRANDING

variable "logo_url" {
  type = string
}

variable "favicon_url" {
  type = string
}

#LOG STREAMS SERVICE

variable "log_stream_url" {
  type = string
}
variable "log_stream_token" {
  type = string
}

# ATACK PROTECTION
## SUSPICIOUS IP THROTTLING

variable "suspicious_ip_throttling_enabled" {
  type = bool
}

variable "suspicious_ip_throttling_shields" {
  type = list(string)
}

variable "suspicious_ip_throttling_allowlist" {
  type = list(string)
}

# ATACK PROTECTION
## BRUTE FORCE PROTECTION

variable "brute_force_protection_enabled" {
  type = bool
}

variable "brute_force_protection_allowlist" {
  type = list(string)
}

variable "brute_force_max_attempts" {
  type = string
}

variable "brute_force_protection_mode" {
  type = string
}
variable "brute_force_protection_shields" {
  type = list(string)
}
variable "session_cookie" {
  type = string
}

# ATTACK PROTECTION
##BREACHED PASSWORD DETECTION

variable "breached_password_enabled" {
  type = bool
}
variable "breached_password_detection_method" {
  type = string
}

variable "breached_password_detection_shields" {
  type = list(string)
}
variable "breached_password_detection_admin_notification_frequency" {
  type = list(string)
}

variable "SMTP_USER" {
  type = string
}
variable "SMTP_PASS" {
  type = string
}