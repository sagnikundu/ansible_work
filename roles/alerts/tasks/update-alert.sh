#!/bin/bash

curl -k -X PUT -u admin:VMware@123 -H "Content-Type: application/xml"  -d @update-alert.xml  https://10.112.72.37/suite-api/api/alertdefinitions
