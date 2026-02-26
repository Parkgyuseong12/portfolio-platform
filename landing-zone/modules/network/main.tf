resource "terraform_data" "network_stub" {
  input = {
    name = var.name
    tags = var.tags
  }
}
