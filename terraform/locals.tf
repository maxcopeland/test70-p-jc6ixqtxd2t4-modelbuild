locals {
    ep_var = yamldecode("../modeldeploy/${var.environment}-endpoint-config.yaml")
    monitor_var = yamldecode("../modelmonitor/${var.environment}-monitor-config.yaml")
}