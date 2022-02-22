sfdx --version
sfdx plugins:install @salesforce/sfdx-scanner
git clone "$giturl"
ls -ltra
echo "consumer_key: $consumer_key"
echo "username: $username"
echo "instanceurl: $instance_url"
echo "sfdx auth:jwt:grant --clientid $consumer_key --jwtkeyfile server.key --username $username --instanceurl $instance_url"
echo "$(cat ./Copado-PM-Demo/server.key)"
sfdx auth:jwt:grant --clientid $consumer_key --jwtkeyfile ./Copado-PM-Demo/server.key --username $username --instanceurl $instance_url
cd ./Copado-PM-Demo
echo pwd
ls -ltr
sfdx config:set defaultusername=$username
echo "sfdx force:apex:test:run -d ./ -r human -s $test_suite - w"
sfdx force:apex:test:run -d ./ -r human -s $test_suite -w 10