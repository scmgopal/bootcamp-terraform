terraform {
  backend "s3" {
    bucket         = "ovo-terraform-training"
    key            = "core"
    region         = "eu-west-1"
    encrypt        = true
    profile        = "training"
    dynamodb_table = "ovo-tf-training-lock"
  }
}
