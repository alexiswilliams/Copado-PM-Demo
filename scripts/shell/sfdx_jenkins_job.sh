sfdx --version
git clone "$giturl"
ls -ltra
echo "consumer_key: $consumer_key"
echo "username: $username"
echo "instanceurl: $instance_url"
echo "sfdx auth:jwt:grant --clientid $consumer_key --jwtkeyfile server.key --username $username --instanceurl $instance_url"
echo "$(cat ./Copado-PM-Demo/server.key)"
sfdx auth:jwt:grant --clientid $consumer_key --jwtkeyfile ./Copado-PM-Demo/server.key --username $username --instanceurl $instance_url
echo pwd
ls -ltr
sfdx config:set defaultusername=$username
sfdx force:mdapi:beta:retrieve -r mdapi -k mdapi/package.xml --unzip --zipfilename unpackage.zip