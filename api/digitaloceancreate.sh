# need to import API key from non-github dir

curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer XX"  -d '{"name":"Apache-Work","region":"nyc3","size":"s-1vcpu-1gb","image":"ubuntu-18-04-x64","backups":false,"ipv6":true,"user_data":null,"private_networking":null,"volumes": null,"tags":["temp"], "memory":"512mb", "disk": "10gb"}' "https://api.digitalocean.com/v2/droplets"
