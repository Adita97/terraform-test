friendly_name = "Test Terraform"
# custom domain definition

# auth0_domain, client_id, client_secret are injected via TF_VAR_* env vars
# from GitHub Secrets (AUTH0_DOMAIN, AUTH0_CLIENT_ID, AUTH0_CLIENT_SECRET).
auth0_custom_domain = ""

# TENANT CONFIGURATION

enabled_locales       = ["en", "de"]
session_lifetime      = "2" //hours
idle_session_lifetime = "2" //hours
session_cookie        = "persistent"

# CALLBACKS

dummy_app_callbacks           = [""]
dummy_app_allowed_logout_urls = [""]

#  BRANDING

logo_url    = ""
favicon_url = ""

# LOG STREAMING

log_stream_url   = ""
log_stream_token = ""

# ATTACK PROTECTION

suspicious_ip_throttling_enabled   = true
suspicious_ip_throttling_shields   = ["admin_notification", "block"]
suspicious_ip_throttling_allowlist = null


brute_force_protection_enabled   = false
brute_force_max_attempts         = null
brute_force_protection_allowlist = null
brute_force_protection_mode      = null
brute_force_protection_shields   = null

breached_password_enabled                                = false
breached_password_detection_method                       = null
breached_password_detection_shields                      = null
breached_password_detection_admin_notification_frequency = null

#EMAIL PROVIDER

