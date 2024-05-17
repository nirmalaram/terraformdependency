
resource "aws_instance" "dependency-ins" {
    ami=var.ami
    instance_type = var.ins_type
    key_name = var.key
    tags = {
      Name="in-dependency"
    }
  
}
resource "aws_s3_bucket" "dependency-s3" {
    bucket = "s3-dependencymay17"
    depends_on = [ aws_instance.dependency-ins ]
  
}