/*-------------------------------------------------
* Inputs
*
*
*
*-------------------------------------------------*/

variable "access_key" {
    description = "Your AWS access key"
}
variable "secret_key" {
    description = "Your AWS secret key"
}
variable "region" {}

/* Used to tag all the resources for this terraform.  Must be unique.*/
variable "tag_terraform_group" {
     type = "string"
     default = "terraform-exam-site"
}