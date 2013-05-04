#!/bin/bash

AMI_ID="ami-d70c2892"  
INSTANCE_TYPE="m1.small"
SECURITY_GROUPS="chefami"
RUNLIST="role[cloud_master]"

knife ec2 server create -x ubuntu -I $AMI_ID  -f $INSTANCE_TYPE -G $SECURITY_GROUPS -r "$RUNLIST"
