# @Author: hardy
# @Date:   2019-11-07 15:42:10
# @Last Modified by:   hardy
# @Last Modified time: 2019-11-07 15:42:43
#!/usr/bin/env bash
echo "Creating mongo users..."
mongo admin --host localhost -u root -p 518598 --eval "db.createUser({user: 'hardy', pwd: '518598', roles: [{role: 'userAdminAnyDatabase', db: 'admin'}]});"
mongo admin -u root -p 518598 << EOF
use hi
db.createUser({user: 'test', pwd: '518598', roles:[{role:'readWrite',db:'hi'}]})
EOF
echo "Mongo users created."