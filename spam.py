import requests
import time

time.sleep(20)
for i in range(2700):
    r = requests.get("http://127.0.0.1:8989")
    # print(r)
    time.sleep(0.1)
