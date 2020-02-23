mkdir -p /usr/local/scripts
cp ./scripts/* /usr/local/scripts/
curl --request PUT --data @services/redis-0.json http://127.0.0.1:8500/v1/agent/service/register?replace-existing-checks=true
