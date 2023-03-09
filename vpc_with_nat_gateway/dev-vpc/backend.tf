terraform {
 backend "s3" {
   bucket         = "dolo-dempo"
   key            = "eks-vpc/terraform.tfstate"
   region         = "us-east-2"
   encrypt        = true
   dynamodb_table = "terraform-state"
 }
}
