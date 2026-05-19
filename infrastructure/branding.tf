resource "auth0_branding" "main" {
  logo_url    = var.logo_url
  favicon_url = var.favicon_url

  colors {
    primary         = "#0059d6"
    page_background = "#000000"
  }

  universal_login {
    body = templatefile("${path.module}/../assets/login/login-page.html.tfpl", {
      css_content = file("${path.module}/../assets/login/css/styles.css")
    })
  }
}
