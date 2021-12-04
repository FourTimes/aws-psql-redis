region                      = "eu-central-1"
vpc_cidr_block              = "10.68.0.0/16"
availability_zones          = ["eu-central-1a", "eu-central-1b"]
public_subnet_cidr_blocks   = ["10.68.1.0/24", "10.68.2.0/24"]
private_subnet_cidr_blocks  = ["10.68.3.0/24", "10.68.4.0/24"]
additional_tags             = { Envs = "production" }
application_name            = "dodo"

instances = {
    first  = {
        associate_public_ip_address = true
        availability_zone           = "eu-central-1a"
        key_name                    = "siva"
        instance_type               = "t2.micro"
        monitoring                  = false
        instance_mode               = "public"
        root_block_devices          = [{
          delete_on_termination = true
    	  encrypted             = true
    	  iops                  = 3000
    	  throughput            = 125
    	  volume_size           = 250
    	  volume_type           = "gp3"
	  }
	]
       ebs_block_devices = [{
    	  device_name = "/dev/sdg"
    	  volume_size = 5
    	  volume_type = "gp2"
    	 delete_on_termination = false
  	},
        {
    	  device_name = "/dev/sdh"
    	  volume_size = 5
    	  volume_type = "gp2"
    	  delete_on_termination = false
        }]
    }
}
