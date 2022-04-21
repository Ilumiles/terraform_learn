provider "aws" {
    region= "us-east-1"
    access_key = "AKIAUG4FKZHKH7GM5FPB"
    secret_key = "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"
}

resource "aws_vpc" "development-vpc"{
    cidr_block =  "10.0.0.0/16"
    tags= {
        Name: "development"
    }
}

resource "aws_subnet" "dev-subnet-1"{
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"
    tags = {
        Name: "subnet-1-dev"
    }

}
output "dev-subnet-1"{
	value = aws_subnet.dev-subnet-1.id
}
output "development-vpc"{
        value = aws_vpc.development-vpc.id
}

