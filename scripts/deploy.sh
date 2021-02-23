#!/bin/bash


 aws ssm send-command \
	--document-name "AWS-RunShellScript" \
	--targets '[{"Key":"tag:Name","Values":["seed-test-asg"]}]' \
	--parameters '{"commands":["#!/bin/bash","cd /seedProject; git pull"]}'
