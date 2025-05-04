variable "GOOGLE_CREDENTIALS" {
  description = "Path to the Google Cloud service account key file"
  type        = string
  default = "value"
}

variable "project" {
  description = "GCP project ID where the resources will be created"
  type        = string
  default     = "backends-454520"
}