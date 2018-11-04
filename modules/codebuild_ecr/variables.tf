variable "project_name" {
  description = "The project's name"
}

variable "iam_role_arn" {
  description = "The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account"
}

variable "compute_type" {
  description = "The compute resources the build project will use"
  default = "BUILD_GENERAL1_SMALL"
}

variable "image" {
  description = "The image identifier of the Docker image to use for this build project"
  default = "aws/codebuild/docker:17.09.0"
}

variable "env_type" {
  description = "The type of build environment to use for related builds"
  default = "LINUX_CONTAINER"
}

variable "region" {
  description = "Region in which the ECR repository the built docker image should be pushed to resides"
}

variable "account_id" {
  description = "ID of the account in which the ECR repository the built docker image should be pushed to resides"
}

variable "repo_name" {
  description = "Name of the the ECR repository the built docker image should be pushed to"
}

variable "image_tag" {
  description = "Tag to be assigned to the built and pushed docker image"
  default = "latest"
}

variable "github_project_url" {
  description = "URL of the GitHub project to be built"
}

variable "environment_tag" {
  description = "Value given to the Environment tag"
  default = "dev"
}
