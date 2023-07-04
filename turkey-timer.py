import psutil

cpu_temp = psutil.sensors_temperatures()['cpu'][0].current # type: ignore


print(cpu_temp)