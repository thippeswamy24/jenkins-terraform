//you can either enter your access/secrect keys in here, or otherwise you can create a file with name terraform.tfvars with these values.


variable "access_key" {
    description = "Your AWS Access Key"
    default = ""
}

variable "secret_key" {
    description = "Your AWS Secret Key"
    default = ""
}
