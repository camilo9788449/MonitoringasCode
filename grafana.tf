provider "grafana" {
  url  = "http://localhost:3000/"
  auth = "eyJrIjoiRUJFTWFmYWpXcXc1OE1pQmplb1NLMkFpWEJZVEU1MlYiLCJuIjoiVGVycmFmb3JtIiwiaWQiOjF9"
}

resource "grafana_dashboard" "metrics" {
  config_json = "${file("grafana-dashboard.json")}"
}

resource "grafana_alert_notification" "slack" {
  name = "Email notifier"
  type = "email"

  
}

/*resource "grafana_organization" "org" {
    name         = "Grafana DevOps"
    admin_user   = "admin"
    create_users = true
    admins       = [
        "johanmoreno@cbit-online.com"
    ]
    editors      = [
        "camilo9788449@hotmail.com"
    ]
    viewers      = [
        "devopsperiferia@gmail.com"
    ]
}*/