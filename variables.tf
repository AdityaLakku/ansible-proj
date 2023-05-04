variable "my_region" {
    type = string
    description = "This variable is used to specify region"
}

variable "instance_type" {
    type = string
    default = "t2.micro"  
}

variable "my_access_key" {
    type = string
    description = "This variable is used to specify access_key"
}

variable "my_secret_key" {
    type = string
    description = "This variable is used to specify access_key"
}


variable "my_key_name" {
    type = string 
}

variable "my_web_want" {
    type = bool
    default = true
}


variable "my_web_count" {
    type = number
    default = 1
  
}

variable "my_mail_want" {
    type = bool
    default = true
}

variable "my_mail_count" {
    type = number
    default = 1
  
}

variable "my_domain_name" {
    type = string
}


variable "my_web_sub_domain_name" {
    type = string
}

variable "my_mail_sub_domain_name" {
    type = string
}

variable "my_local_aws_private_key_path" {
    type = string
  
}



