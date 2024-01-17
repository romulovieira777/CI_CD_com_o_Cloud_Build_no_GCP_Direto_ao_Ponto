terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket"
    prefix  = "terraform/vm/state"
  }
}
