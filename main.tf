resource "azuredevops_project" "project" {
  name               = var.name
  description        = var.description
  version_control    = var.version_control
  visibility         = var.visibility
  work_item_template = var.work_item_template
}

resource "azuredevops_project_features" "features" {
  project_id = azuredevops_project.project.id
  features   = var.features
}
