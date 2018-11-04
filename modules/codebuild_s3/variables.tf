variable "project_name" {
  description = "The project's name"
}

variable "iam_role_arn" {
  description = "The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that enables AWS CodeBuild to interact with dependent AWS services on behalf of the AWS account"
}

variable "s3_bucket_arn" {
  description = "ARN of the output S3 bucket"
}

variable "artifact_name" {
  description = "Name of the output artifact object"
}

variable "compute_type" {
  description = "The compute resources the build project will use"
  default = "BUILD_GENERAL1_SMALL"
}

variable "image" {
  description = "The image identifier of the Docker image to use for this build project"
  default = "aws/codebuild/python:3.6.5"
}

variable "env_type" {
  description = "The type of build environment to use for related builds"
  default = "LINUX_CONTAINER"
}

variable "github_project_url" {
  description = "URL of the GitHub project to be built"
}

variable "environment_tag" {
  description = "Value given to the Environment tag"
  default = "dev"
}
