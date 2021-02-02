#!/bin/bash
instanceID=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=seed-test-asg" --query Reservations[*].Instances[*].[InstanceId] --output text)

aws ec2 terminate-instances --instance-ids $instanceID