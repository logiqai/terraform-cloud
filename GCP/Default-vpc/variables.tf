variable "bucket" {
    type = string
   default = "logiq-test-poc"
}

variable "zone" {
    type=string
    default="us-central1-a"
  
}

variable "project_id" {
    type=string
    default="gcp-customer-1"
  
}

variable "region"{
    type=string
    default = "us-central1"
}

variable "cred"{
    type=string
    default="terraform-gcp1.json"

}

variable "machine"{
    type=string
    default="e2-standard-8"
}