#!/bin/bash

AMI_ID="ami-137bcf7a"
INSTANCE_TYPE="t1.micro"
SECURITY_GROUPS="chefami"
RUNLIST="role[cloud_master]"

knife ec2 server create -x ubuntu -I $AMI_ID  -f $INSTANCE_TYPE -G $SECURITY_GROUPS -r "$RUNLIST"
