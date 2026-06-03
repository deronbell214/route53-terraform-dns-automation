terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_route53_zone" "main" {
  name = var.domain_name
}
resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.main.zone_id

  name = "www.${var.domain_name}"

  type = "A"

  ttl = 300

  records = [
    "192.168.1.10"
  ]
}
resource "aws_route53_record" "api" {
  zone_id = aws_route53_zone.main.zone_id

  name = "api.${var.domain_name}"

  type = "A"

  ttl = 300

  records = [
    "192.168.1.20"
  ]
}
resource "aws_route53_record" "mail" {
  zone_id = aws_route53_zone.main.zone_id

  name = "mail.${var.domain_name}"

  type = "A"

  ttl = 300

  records = [
    "192.168.1.30"
  ]
}
resource "aws_route53_record" "verification" {
  zone_id = aws_route53_zone.main.zone_id

  name = var.domain_name

  type = "TXT"

  ttl = 300

  records = [
    "terraform-lab-verification"
  ]
}
