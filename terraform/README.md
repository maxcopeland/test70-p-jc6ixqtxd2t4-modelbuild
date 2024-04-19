This terraform config is mapped to the use-case model endpoint-host workspace. It will automatically trigger the endpoint workspace for the usecase whenever there is an approval on a registered Sagemaker model. 

The variables folder holds the yaml files for each environents endpoint config. You can set the following:

  initial_instance_count
  instance_type
  enable_async_inference
  enable_data_capture
  data_quality_enabled