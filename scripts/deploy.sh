#!/bin/bash

ips=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=seed-test-asg" --query 'Reservations[].Instances[].PrivateIpAddress' --output text);
for ip in $ips;
    do ssh -i ~/.ssh/deploy.pem ec2-user@$ip "sudo bash -c 'cd seedProject; git pull'";
done