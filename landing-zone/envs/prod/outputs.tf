output "common_tags" {
  description = "Common tags used in prod."
  value       = local.common_tags
}

output "module_ids" {
  description = "Stub module resource IDs."
  value = {
    network = module.network.id
    iam     = module.iam.id
    logging = module.logging.id
  }
}
