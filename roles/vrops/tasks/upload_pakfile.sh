#!/bin/bash

tmpfile=`tempfile`
/usr/bin/curl  --request POST --silent --form "pak_handling_advice=CLOBBER" --form "force_content_update=true" --form "contents=@/home/sagnik/ansible-work/vmware-vcops-5.0.0-EpicCareAdapter-1.04-2944187.pak" --insecure --user "admin:VMware@123" https://10.112.72.37/casa/upgrade/cluster/pak/reserved/operation/upload    > $tmpfile


if [ -e $tmpfile ] 
then
echo "Upload successfull"
fi

#echo $tmpfile

pak_id=`python /home/sagnik/ansible-work/roles/vrops/tasks/get_pak_id.py $tmpfile`

pak_id=`echo $pak_id |tr -d "u'"`

echo $pak_id > /tmp/pak_id_file

echo 'pak_id_file: "/tmp/pak_id_file"' >> /home/sagnik/ansible-work/roles/vrops/defaults/main.yml

rm -rf $tmpfile

