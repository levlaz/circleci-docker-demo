#!/bin/bash

ssh ubuntu@demo.levops.net 'docker pull levlaz/aws-demo'
ssh ubuntu@demo.levops.net 'docker stop aws-demo'
ssh ubuntu@demo.levops.net 'docker run --name aws-demo -d -p 5000:5000 levlaz/aws-demo'