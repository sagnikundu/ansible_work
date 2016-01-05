
#!/bin/bash 

curl -s -o /dev/null -w "%{http_code}" -i -k -H "Content-Type:application/json" -d@/tmp/role_body_master.json -u "admin:VMware@123"  -b /tmp/cookie -X POST https://10.112.72.37/casa/deployment/slice/role
