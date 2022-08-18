variable "prefix" {
    type = "string"
    default = "test"
}
variable "location"{
    type = "string"
    default = "westeurope"
}
variable "temp-password"{
    type = "string"
    default = TF_VAR_TEMP_PASSWORD
}