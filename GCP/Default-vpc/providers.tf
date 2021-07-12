provider "google" {
    credentials=file(var.cred)
    project=var.project_id
    region=var.region
    zone=var.zone
}