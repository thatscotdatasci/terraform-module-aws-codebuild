output "id" {
  description = "The name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project"
  value = "${aws_codebuild_project.this.id}"
}

output "arn" {
  description = "The ARN of the CodeBuild project"
  value = "${aws_codebuild_project.this.arn}"
}
