module "sagemaker_endpoint" {
  source            = "git::https://bitbucketp.duke-energy.com/scm/warp/terraform-modules.git//sagemaker-endpoint?ref=master"
  use_case_account_id = var.use_case_account_id
  use_case_name = var.use_case_name
  model_name = var.model_name
  model_data_url = var.model_data_url
  model_image = var.model_image
  environment = var.environment
  initial_instance_count    = try(local.ep_var.EndpointInstanceCount, var.initial_instance_count)
  instance_type             = try(local.ep_var.EndpointIstanceType, var.instance_type)
  enable_async_inference    = try(local.ep_var.EnableAsyncInference, var.enable_async_inference)
  enable_data_capture       = try(local.ep_var.EnableDataCapture, var.enable_data_capture)
  data_quality_enabled      = var.data_quality_enabled
  baseline_constraints_s3_uri = var.baseline_constraints_s3_uri
  baseline_statistics_s3_uri = var.baseline_statistics_s3_uri
}