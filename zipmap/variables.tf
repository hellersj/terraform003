

variable "mypip"{
  type = list
  default = ["prod-pip","dev-pip","test-pip","qa-pip"]
}

variable "subscription_id" {
  description = "3c686e8e-b47e-456a-905d-d226cf5cb45e"
  type        = string
}