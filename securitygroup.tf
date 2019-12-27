
resource"aws_security_group"allow-ssh"{
vpc_id = "from vpc.main.id"
name = "allow-ssh"
description ="security group that allow ssh and all egress traffic"
egress {

from_port =0
to_port = 0
protocol ="-1" //all protocals
cidr_block=["0.0.0.0./0"]// allowing everything 

}

ingress {
//incoming traffic

from_port ="22"
to_port = "22"//tto connect ip address 
protocol ="-1" //only ssh needs tcp
cidr_block=["{0.0.0.0/0}"]

}

tags {
Name = "allow-ssh"
}

}



