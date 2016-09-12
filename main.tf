/*-------------------------------------------------
* Provider
*
*
*
*-------------------------------------------------*/
/* These keys are inputed as variables or they can be added at the command prompt*/
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}


/*-------------------------------------------------
* S3 Bucket
*
*
*TODO: Make policy as a variable that references the bucket name
*-------------------------------------------------*/
resource "aws_s3_bucket" "exam-bucket" {
    bucket = "aws-quick-exam"
    acl = "public-read"
    policy = "${file("exam-site-policy.json")}"

    website {
        index_document = "index.html"
        error_document = "error.html"
    }
	
	tags {
        terraform_group = "${var.tag_terraform_group}"
    }
}





/*-------------------------------------------------
* Lambda function
*
*
*
*-------------------------------------------------*/



/*-------------------------------------------------
* API Gateway
*
*
*
*-------------------------------------------------*/