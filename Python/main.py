from influxdb_client import InfluxDBClient, Point, WritePrecision
import requests
from config import api_url, api_key, influxdb_url, influxdb_token, influxdb_org

def get_data_from_api():
    response = requests.get(api_url, headers={"Authorization": f"Bearer {api_key}"})
    data = response.json()
    return data

def save_data_to_influxdb(client, data):
    point = Point("measurement_name").tag("location", "office").field("temperature", data['temp']).time(datetime.utcnow(), WritePrecision.NS)
    write_api = client.write_api(write_options=SYNCHRONOUS)
    write_api.write(bucket="your-bucket", record=point)

client = InfluxDBClient(url=influxdb_url, token=influxdb_token, org=influxdb_org)
data = get_data_from_api()
save_data_to_influxdb(client, data)
