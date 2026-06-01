resource "auth0_tenant" "tenant" {
  friendly_name = var.friendly_name

  idle_session_lifetime = var.idle_session_lifetime
  session_lifetime      = var.session_lifetime

  enabled_locales = var.enabled_locales

  flags {
    /* Whether the legacy delegation endpoint will be enabled for your account (true) or not available (false). */
    allow_legacy_delegation_grant_types = false

    /* Whether the legacy auth/ro endpoint (used with resource owner password and passwordless features) will be enabled for your account (true) or not available (false).*/
    allow_legacy_ro_grant_types = false

    /* (Boolean) If enabled, customers can use Tokeninfo Endpoint, otherwise they can not use it. */
    allow_legacy_tokeninfo_endpoint = false

    /* (Boolean) Enables new insights activity page view. */
    dashboard_insights_view = false

    /* Enables beta access to log streaming changes. */
    dashboard_log_streams_next = true

    /* (Boolean) Indicates whether classic Universal Login prompts include additional security headers to prevent clickjacking. /* (Boolean) Indicates whether classic Universal Login prompts include additional security headers to prevent clickjacking.*/
    disable_clickjack_protection_headers = true

    /* (Boolean) Disables SAML fields map fix for bad mappings with repeated attributes. */
    disable_fields_map_fix = false

    /* (Boolean) If true, SMS phone numbers will not be obfuscated in Management API GET calls. */
    disable_management_api_sms_obfuscation = false

    /* (Boolean) If enabled, users will be presented with an email verification prompt during their first login when using Azure AD or ADFS connections. */
    enable_adfs_waad_email_verification = false

    /* (Boolean) Indicates whether the APIs section is enabled for the tenant.*/
    enable_apis_section = false

    /* (Boolean) Indicates whether all current connections should be enabled when a new client is created. */
    enable_client_connections = false

    /* (Boolean) Indicates whether the tenant allows custom domains in emails. Before enabling this flag, you must have a custom domain with status: ready. */
    enable_custom_domain_in_emails = false

    /* (Boolean) Indicates whether the tenant allows dynamic client registration. */
    enable_dynamic_client_registration = false

    /*  (Boolean) Whether ID tokens can be used to authorize some types of requests to API v2 (true) or not (false). */
    enable_idtoken_api2 = false

    /* (Boolean) Indicates whether to use the older v2 legacy logs search. */
    enable_legacy_logs_search_v2 = false

    /* (Boolean) Whether ID tokens and the userinfo endpoint includes a complete user profile (true) or only OpenID Connect claims (false). */
    enable_legacy_profile = false

    /* (Boolean) Indicates whether advanced API Authorization scenarios are enabled. */
    enable_pipeline2 = false

    /* (Boolean) Indicates whether the public sign up process shows a user_exists error if the user already exists. */
    enable_public_signup_user_exists_error = true

    /* (Boolean) Used to allow users to pick which factor to enroll with from the list of available MFA factors. */
    mfa_show_factor_list_on_enrollment = true

    /* (Boolean) Do not Publish Enterprise Connections Information with IdP domains on the lock configuration file. */
    no_disclose_enterprise_connections = false

    /* (Boolean) Delete underlying grant when a refresh token is revoked via the Authentication API. */
    revoke_refresh_token_grant = false

    /* (Boolean) Indicates whether to use scope descriptions for consent. */
    use_scope_descriptions_for_consent = false
  }

  session_cookie {
    mode = var.session_cookie
  }

  sessions {
    /* (Boolean) When active, users will be presented with a consent prompt to confirm the logout request if the request is not
        trustworthy. Turn off the consent prompt to bypass user confirmation.
     */
    oidc_logout_prompt_enabled = false
  }
}
