resource "terraform_data" "iam_stub" {
  input = {
    name = var.name
    tags = var.tags
  }
}
