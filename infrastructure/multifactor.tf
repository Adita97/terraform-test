resource "auth0_guardian" "my_guardian" {
  policy        = "never"
  email         = true
  otp           = false
  recovery_code = false
}