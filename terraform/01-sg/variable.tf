variable "project" {
    default = "roboshop"
    type = string
}

variable "environment" {
    default = "dev"
    type = string
}

variable "sg_names" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq",
                "catalogue", "user", "cart", "shipping", "payment",
                "frontend",
                "bastion",
                "frontend-alb", "backend-alb"
                ]
    type = list(string)
}