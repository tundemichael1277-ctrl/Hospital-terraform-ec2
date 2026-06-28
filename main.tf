resource "aws_instance" "hospital_app" {
    count = 4
    ami = "ami-0150189e4c09ffab5"
    instance_type = "t3.micro"
    key_name = "mine"
    security_groups = [ aws_security_group.hos_sg.name ]
    tags = {
      Name = "hospital_app"
    }
    user_data = file("userdata.sh")
 
}