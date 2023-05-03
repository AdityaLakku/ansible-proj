variable "my_region" {
    type = string
    description = "This variable is used to specify region"
}

variable "instance_type" {
    type = string
    default = "t2.micro"  
}

variable "key_name" {
    type = string 
}

variable "web_want" {
    type = bool
    default = true
}


variable "web_count" {
    type = number
    default = 1
  
}

variable "mail_want" {
    type = bool
    default = true
}

variable "mail_count" {
    type = number
    default = 1
  
}

variable "domain_name" {
    type = string
}


variable "web_sub_domain_name" {
    type = string
}

variable "mail_sub_domain_name" {
    type = string
}

variable "local_aws_private_key_path" {
    type = string
  
}



