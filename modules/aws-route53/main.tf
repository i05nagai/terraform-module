resource "aws_route53_zone" "zone" {
  name = "zone.example.com."
  comment = "zone"

  tags {
    Owner = "zone"
  }
}

resource "aws_route53_record" "zone_ns" {
  zone_id = "${aws_route53_zone.zone.zone_id}"
  name    = "zone.example.com."
  type    = "NS"
  ttl     = "300"

  records = [
    "${aws_route53_zone.zone.name_servers.0}",
    "${aws_route53_zone.zone.name_servers.1}",
    "${aws_route53_zone.zone.name_servers.2}",
    "${aws_route53_zone.zone.name_servers.3}",
  ]
}

resource "aws_route53_record" "zone_sub" {
  zone_id = "${aws_route53_zone.zone.zone_id}"
  name    = "sub.zone.example.com."
  type    = "A"
  ttl     = "300"
  records = [
      "${var.ip}"
  ]
}

resource "aws_route53_record" "zone_sub" {
  zone_id = "${aws_route53_zone.zone.zone_id}"
  name    = "*.sub.zone.example.com."
  type    = "CNAME"
  ttl     = "300"
  records = [
      "sub.zone.example.com."
  ]
}

