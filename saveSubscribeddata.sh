#!binbash

sudo chmod 777 value.txt
sudo chown www-data value.txt

mosquitto_sub -h 192.168.1.220 -p 1883 -t sensor_data -u rafael -P rafael subscribed_data.txt & pid=$!

trap kill $pid EXIT

wait