data "aws_route53_zone" "hosted_zone" {
  name = var.domain_name
}

locals {
  web_server_ip = aws_instance.web_server.*.public_ip
  mail_server_ip = aws_instance.mail_server.*.public_ip

}


resource "aws_route53_record" "web" {
  count   = var.web_want == true ? 1 : 0
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.web_sub_domain_name
  type    = "A"
  ttl     = 300
  records = aws_instance.web_server.*.public_ip
}

resource "aws_route53_record" "mail" {
  count   = var.mail_want == true ? 1 : 0
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.mail_sub_domain_name
  type    = "A"
  ttl     = 300
  records = aws_instance.mail_server.*.public_ip
}
