# EC2 모듈 리소스 정의
resource "aws_instance" "this" {
  #   ami           = "ami-056a29f2eddc40520"  # Ubuntu 22.04 LTS
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    delete_on_termination = true  # 인스턴스 종료시 볼륨도 삭제
  }

  disable_api_termination = true   # 종료 방지 활성화
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = var.instance_name
  }
}
