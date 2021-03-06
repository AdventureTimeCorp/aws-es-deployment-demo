variable "region" {
  description = "The AWS region to deploy the cluster into, e.g. eu-central-1"
  type        = string
  default     = "eu-central-1"
}

variable "aws_profile" {
  description = "(If required) The AWS profile name to use for running terraform, look for the name in the ~/.aws/config local file"
  type        = string
}

variable "role_arn" {
  description = "(If required) The AWS IAM role arn to assume for running terraform (e.g. arn:aws:iam::012345678910:role/EKSDeployerRole)"
  type        = string
}

variable "cluster_oidc_issuer_url" {
  description = "The URL on the EKS cluster OIDC Issuer"
  type        = string
  default     = "https://oidc.eks.eu-central-1.amazonaws.com/id/01987654321"
}

variable "oidc_provider_arn" {
  description = "The ARN of the OIDC Provider"
  type        = string
  default     = "arn:aws:iam::764324427262:oidc-provider/oidc.eks.eu-central-1.amazonaws.com/id/01987654321"
}

variable "namespace" {
  description = "The namespace to deploy Kaniko"
  type        = string
  default     = "kaniko"
}
