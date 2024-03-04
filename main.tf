provider "google" {

  credentials = var.sa_key
  #project = var.project_id
}
 
variable "sa_key" {
  default =  ""
}
