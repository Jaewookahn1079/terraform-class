resource "aws_ecr_repository" "terraform-ecr" {
  name                 = "terraform-ecr"
  image_tag_mutability = "IMMUTABLE" # 태그 이름을 수정하지 못하도록 선언

  image_scanning_configuration {
    scan_on_push = false
  }
  tags = {
    Name = "terraform-ecr"
  }
}
