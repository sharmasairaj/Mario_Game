terraform {
  backend "s3" {
    bucket         = "my-terraform-mario"
    key            = "terraform/state.tfstate" # Path in the bucket
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"    # Optional, for locking
    encrypt        = true                      # Encrypt state file
  }
}
 
