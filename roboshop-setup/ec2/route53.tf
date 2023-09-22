resource "aws_route53_record" "component" {
  zone_id = "Z08104102TDJJFARM8HPK"
  name    = var.COMPONENT
  type    = "A"
  ttl     = 10
  records = [aws_spot_instance_request.spot_worker.private_ip]
}