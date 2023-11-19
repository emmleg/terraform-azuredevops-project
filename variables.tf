variable "name" {
  description = "(Required) The Project Name."
  type        = string
}

variable "description" {
  description = "(Optional) The Description of the Project."
  type        = string
  default     = null
}

variable "version_control" {
  description = "(Optional) Specifies the version control system. Valid values: Git or Tfvc. Defaults to Git."
  type        = string
  default     = "Git"
}

variable "visibility" {
  description = "(Optional) Specifies the visibility of the Project. Valid values: private or public. Defaults to private."
  type        = string
  default     = "private"
}

variable "work_item_template" {
  description = "(Optional) Specifies the work item template. Valid values: Agile, Basic, CMMI, Scrum or a custom, pre-existing one. Defaults to Agile. An empty string will use the parent organization default."
  type        = string
  default     = "Agile"
}

variable "features" {
  description = "(Optional) Defines the status (enabled, disabled) of the project features. Valid features are boards, repositories, pipelines, testplans, artifacts"
  type        = map(string)
  default = {
    boards       = "enabled"
    repositories = "enabled"
    pipelines    = "enabled"
    testplans    = "enabled"
    artifacts    = "enabled"
  }
}
