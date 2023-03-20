provider "aws"{
    region = "eu-east-1"
}

resource "aws_instance" "webserver" {
    ami             = "ami-005f9685cb30f234b"
    instance_type   = "t2.micro"

    tags = {
    Name = "Web Server"
    }

    depends_on = [aws_instance.database]
}
resource "aws_instance" "database" {
    ami             = "ami-005f9685cb30f234b"
    instance_type   = "t2.micro"

    tags = {
    Name = "Database Server"
  }