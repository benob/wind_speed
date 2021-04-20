Worldwide wind
==============

This repository contains images of wind speed and direction generate from IRI climate datasets.
For each month, it presents normalized speed and longitudinal/latitudinal vectors on a 144x73 grid.

![Wind speed](wind_speed.gif?raw=true)

![Zonal wind](zonal_wind.gif?raw=true)

![Meridional Wind](meridional_wind.gif?raw=true)

The original data was downloaded from here:
https://iridl.ldeo.columbia.edu/maproom/Global/Climatologies/Vector_Winds.html?P=925&T=Jul#tabs-2

Although the data contains values for different altitudes, only sea-level values are used.

The values are normalized between 0-255 and saved in images as luminance. For gifs, each frame represents one month from january to december.
For montage pngs, months are layed by rows, (jan, feb, mar), (apr, may, jun)...

To recover the original data, convert to float, divide by 255, multiply by (max-min), add min, with the following min an max values:
```
speed
  min = 0.0073105706833302975
  max = 17.00935935974121
zonal
  min = -11.800999641418457
  max = 12.5649995803833
meridional
  min = -9.793999671936035
  max = 14.07800006866455
```

To regenerate the images, use:
```
sh download.sh
pip install --user -r requirements.txt
python convert_wind_data.py
```
