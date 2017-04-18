#!/bin/bash

ssh ubuntu@demo.levlaz.org 'docker pull levlaz/aws-demo'
ssh ubuntu@demo.levlaz.org 'docker stop aws-demo && docker rm aws-demo'
ssh ubuntu@demo.levlaz.org 'docker run --name aws-demo -d -p 80:5000 levlaz/aws-demo'
