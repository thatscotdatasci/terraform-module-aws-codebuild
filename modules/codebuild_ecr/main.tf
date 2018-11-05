resource "aws_codebuild_project" "this" {
  name = "${var.project_name}"
  build_timeout = "5"
  service_role = "${var.iam_role_arn}"
  badge_enabled = true

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type = "${var.compute_type}"
    image = "${var.image}"
    type = "${var.env_type}"
    privileged_mode = true

    environment_variable {
      "name"  = "AWS_DEFAULT_REGION"
      "value" = "${var.region}"
    }

    environment_variable {
      "name"  = "AWS_ACCOUNT_ID"
      "value" = "${var.account_id}"
    }

    environment_variable {
      "name"  = "IMAGE_REPO_NAME"
      "value" = "${var.repo_name}"
    }

    environment_variable {
      "name"  = "IMAGE_TAG"
      "value" = "${var.image_tag}"
    }

    environment_variable {
      "name"  = "CONTAINER_NAME"
      "value" = "${var.container_name}"
    }
  }

  source {
    type = "GITHUB"
    location = "${var.github_project_url}"
    git_clone_depth = 1
    report_build_status = true
  }

  tags {
    "Environment" = "${var.environment_tag}"
  }
}
