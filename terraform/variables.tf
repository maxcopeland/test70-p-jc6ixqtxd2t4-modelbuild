variable "use_case_account_id" {
  description = "account id of the use case"
}

variable "use_case_name" {
  description = "name of the use case"
}

variable "environment" {
  type = string
}

variable "model_name" {
  description = "name of the model"
}

variable "initial_instance_count" {
  description = "number of instances for endpoint"
  default     = 1
}

variable "instance_type" {
  description = "instance type for the endpoint"
  default     = "ml.t2.medium"
}

variable "model_image" {
  type        = string
  description = "URI for model container image"
  default     = "placeholder_replaced_by_tfe_trigger_payload"
}

variable "model_data_url" {
  type        = string
  description = "URI for model data"
  default     = "placeholder_replaced_by_tfe_trigger_payload"
}

variable "initial_variant_weight" {
  type        = number
  description = "Determines initial traffic distribution among all of the models specified in the endpoint configuration."
  default     = 1.0
}

variable "enable_data_capture" {
  type        = bool
  description = "Feature flag to enable data capture."
  default     = false
}

variable "enable_async_inference" {
  type        = bool
  description = "Feature flag to enable asynchronous inference."
  default     = false
}

variable "serverless_endpoint" {
  type = bool
  description = "Deploys the endpoint as serverless"
  default = false
}

variable "allowed_ignorable_list" {
  default = ["s3-bucket-without-versioning"]
  type    = list(string)
}

variable "data_quality_enabled" {
  type = string
  description = "Enable data quality job"
  default = "false"
}

variable "baseline_constraints_s3_uri" {
  type = string
  description = "The Amazon S3 URI for the constraints resource."
  default = null
}

variable "baseline_statistics_s3_uri" {
  type = string
  description = "The Amazon S3 URI for the statistics resource."
  default = null
}