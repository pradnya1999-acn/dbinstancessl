provider "google" {

  credentials = var.sa_key
  #project = var.project_id
}
 
variable "sa_key" {
  default =  ""
}
resource "google_sql_database_instance" "main" {
  name             = "example-instance-march"
  database_version = "MYSQL_5_7"
  region           = "us-central1"
  project          = "your-project-id"

  settings {
    tier = "db-f1-micro"

    # Enable SSL
    ip_configuration {
      require_ssl = true
    }

  }
}
