provider aws {}

resource "aws_instance" "workspace-test" {
 ami = "ami-024ea438ab0376a47"
 instance_type = "t2.micro"
}

terraform{
 backend "s3" {
  bucket = "terraform-state-rudalsss-wave"
  key = "workspaces-example/terraform.tfstate" 
  region = "ap-northeast-2"
  dynamodb_table = "terraform-locks"
  encrypt = true
 }
}
