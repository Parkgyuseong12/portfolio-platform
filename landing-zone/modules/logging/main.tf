resource "terraform_data" "logging_stub" {
  input = {
    name = var.name
    tags = var.tags
  }
}
