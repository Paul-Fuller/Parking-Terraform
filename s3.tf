#########################################
# s3 Bucket for ELB Logs
#########################################

resource "aws_s3_bucket" "" {
  bucket = "elb-bucket"
  acl    = "private"

  tags = {
    Name        = "Parking s3 bucket"
    Environment = "PROD"
  }
}