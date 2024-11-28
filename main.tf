resource "aws_s3_bucket" "muthu_bucket" {
  bucket  = "git3-unique-bucket-name"
  tags    = {
	Name          = "MyS3Bucket"
	Environment    = "Production"
  }
}
