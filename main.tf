resource "aws_instance" "nur" {
    ami = data.aws_ami.tf_ami.id
    instance_type = "t2.micro"
    key_name = "XXXX-key"
    security_groups = [ "tf-romen-numbers-sg" ]
    user_data = filebase64("userdata.sh")
    tags = {
        Name = "terraform-ile-roman-numbers-project"
    }
}