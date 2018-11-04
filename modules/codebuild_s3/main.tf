resource "aws_codebuild_project" "this" {
  name = "${var.project_name}"
  build_timeout = "5"
  service_role = "${var.iam_role_arn}"
  badge_enabled = "True"

  artifacts {
    type = "S3"
    location = "${var.s3_bucket_arn}"
    name = "${var.artifact_name}.zip"
    path = "${var.artifact_name}"
    namespace_type = "BUILD_ID"
    packaging = "ZIP"
  }

  environment {
    compute_type = "${var.compute_type}"
    image = "${var.image}"
    type = "${var.env_type}"
  }

  source {
    type = "GITHUB"
    location = "${var.github_project_url}"
    git_clone_depth = 1
    report_build_status = "True"
  }

  tags {
    "Environment" = "${var.environment_tag}"
  }
}
