#EC2 instance securit group Allow inbound and outbound rules for web application"
resource "aws_security_group" "apache_sg" {
    name = replace(local.name, "resource", "apache-server-sg")
    description = "Allow server inbound and outbound traffic"
    vpc_id = data.aws_vpc.default.id
    tags = local.common_tags

    ingress {
        description = "Allow all HTTP traffic from anywhere to web server"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "Allow SSH from home IP "
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["24.14.245.186/32"] ## The IP range for the users local IP addresses
    }

    egress {
        description = "Allow all outbound traffic from web server"
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}