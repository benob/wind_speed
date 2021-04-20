from netCDF4 import Dataset
from PIL import Image
import numpy as np
import json

def load_data(filename, variable_name, altitude=0):
    dataset = Dataset(filename, "r")
    # assume data to be of shape (month, altitude, y, x)
    data = dataset.variables[variable_name][0:12, altitude, :]
    min = data.min()
    max = data.max()
    data = (255 * (data - min) / (max - min)).astype(np.uint8)
    #print(data.shape)
    #print(variable_name, min, max)
    return data, min, max

def create_montage(data, output_name):
    montage = Image.new('L', (data.shape[2] * 3, data.shape[1] * 4))
    for y in range(4):
        for x in range(3):
            month = y * 3 + x
            img = Image.fromarray(data[month], "L")
            montage.paste(img, (x * img.width, y * img.height))
    montage.save(output_name)

def create_gif(data, output_name):
    frames = []
    for month in range(12):
        img = Image.fromarray(data[month], "L")
        frames.append(img)
    frames[0].save(output_name, save_all=True, append_images=frames[1:], loop=0)

speed, speed_min, speed_max = load_data('wind_speed.nc', 'speed')
zonal, zonal_min, zonal_max = load_data('zonal_wind.nc', 'u')
meridional, meridional_min, meridional_max = load_data('meridional_wind.nc', 'v')

create_gif(speed, 'wind_speed.gif')
create_gif(zonal, 'zonal_wind.gif')
create_gif(meridional, 'meridional_wind.gif')

create_montage(speed, 'wind_speed.png')
create_montage(zonal, 'zonal_wind.png')
create_montage(meridional, 'meridional_wind.png')

print(json.dumps({
    'speed': [float(speed_min), float(speed_max)],
    'zonal': [float(zonal_min), float(zonal_max)],
    'meridional': [float(meridional_min), float(meridional_max)],
    }, indent=2))
