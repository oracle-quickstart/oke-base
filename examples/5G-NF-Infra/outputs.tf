# Copyright (c) 2022 Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.
# 

# Deployment outputs
output "deploy_id" {
  value = module.oke-quickstart.deploy_id
}

# OKE Outputs
output "comments" {
  value = module.oke-quickstart.comments
}
output "deployed_oke_kubernetes_version" {
  value = module.oke-quickstart.deployed_oke_kubernetes_version
}
output "deployed_to_region" {
  value = module.oke-quickstart.deployed_to_region
}
output "kubeconfig" {
  value     = module.oke-quickstart.kubeconfig
  sensitive = true
}
output "kubeconfig_for_kubectl" {
  value       = module.oke-quickstart.kubeconfig_for_kubectl
  description = "If using Terraform locally, this command set KUBECONFIG environment variable to run kubectl locally"
}
output "dev" {
  value = module.oke-quickstart.dev
}
### Important Security Notice ###
# The private key generated by this resource will be stored unencrypted in your Terraform state file. 
# Use of this resource for production deployments is not recommended. 
# Instead, generate a private key file outside of Terraform and distribute it securely to the system where Terraform will be run.
output "generated_private_key_pem" {
  value     = module.oke-quickstart.generated_private_key_pem
  sensitive = true
}